import pandas as pd
import scipy.stats as stats

# Load dataset from CSV
FILE_PATH = "app_stats.csv"  # Ensure the file exists in the same directory or provide full path

try:
    # Read the CSV file
    data = pd.read_csv(FILE_PATH)

    # Ensure required columns exist
    required_columns = ["App_Rating", "Num_Tests", "Statement_Coverage", "Branch_Coverage", "API_Coverage", "Test_Smell_Ratio"]
    for col in required_columns:
        if col not in data.columns:
            raise ValueError(f"Missing required column: {col}")

    # Perform ANOVA tests
    anova_results = {}
    correlations = {}

    # Group data by app rating categories for ANOVA
    data["Rating_Group"] = pd.cut(data["App_Rating"], bins=[1, 2, 3, 4, 5], labels=["1-2", "2-3", "3-4", "4-5"])
    
    for metric in ["Num_Tests", "Statement_Coverage", "Branch_Coverage", "API_Coverage", "Test_Smell_Ratio"]:
        grouped_data = [group[metric].dropna() for _, group in data.groupby("Rating_Group")]

        # Perform ANOVA test
        f_value, p_value = stats.f_oneway(*grouped_data)
        anova_results[metric] = (f_value, p_value)

        # Compute Pearson correlation
        correlation, _ = stats.pearsonr(data[metric], data["App_Rating"])
        correlations[metric] = correlation

    # Display results
    print("\n--- ANOVA Test Results ---")
    for metric, (f_value, p_value) in anova_results.items():
        significance = "*" if p_value < 0.05 else "**" if p_value < 0.01 else ""
        print(f"{metric}: F-Value = {f_value:.2f}, p-Value = {p_value:.4f} {significance}")

    print("\n--- Pearson Correlation Results ---")
    for metric, correlation in correlations.items():
        strength = "Weak" if abs(correlation) < 0.3 else "Moderate" if abs(correlation) < 0.5 else "Strong"
        print(f"{metric}: Correlation = {correlation:.2f} ({strength})")

except FileNotFoundError:
    print(f"Error: The file '{FILE_PATH}' was not found.")
except ValueError as e:
    print(f"Error: {e}")
except Exception as e:
    print(f"An unexpected error occurred: {e}")
