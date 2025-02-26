import pandas as pd
from google_play_scraper import app
import time

# Input file containing app IDs
INPUT_FILE = "apps.csv"
OUTPUT_FILE = "app_ratings.csv"

# Load the CSV file
try:
    apps_df = pd.read_csv(INPUT_FILE)

    if "id" not in apps_df.columns:
        raise ValueError("The CSV file must contain an 'id' column with app package names.")

    app_ids = apps_df["id"].dropna().unique()  # Remove duplicates and NaN values

    ratings = []

    print(f"Fetching ratings for {len(app_ids)} apps...")

    for app_id in app_ids:
        try:
            # Fetch app details from Google Play Store
            result = app(app_id)
            rating = result["score"]  # Extract app rating

            print(f"Fetched rating for {app_id}: {rating}")
            ratings.append({"id": app_id, "rating": rating})

        except Exception as e:
            print(f"Failed to fetch rating for {app_id}: {e}")
            ratings.append({"id": app_id, "rating": "Not Found"})

        time.sleep(1)  # Sleep to prevent being blocked by Google

    # Save the results to a CSV file
    ratings_df = pd.DataFrame(ratings)
    ratings_df.to_csv(OUTPUT_FILE, index=False)

    print(f"\nRatings saved to {OUTPUT_FILE}")

except FileNotFoundError:
    print(f"Error: The file '{INPUT_FILE}' was not found.")
except ValueError as e:
    print(f"Error: {e}")
except Exception as e:
    print(f"An unexpected error occurred: {e}")
