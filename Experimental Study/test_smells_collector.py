import subprocess
import os
import re
from collections import defaultdict

# Set the path to TsDetect JAR file and the Android project path
TSDETECT_JAR = "/path/to/TsDetect.jar"  # Update this path
ANDROID_PROJECT_PATH = "/path/to/android/project"  # Update this path
OUTPUT_FILE = "test_smells_report.txt"

# Ensure paths exist
if not os.path.exists(TSDETECT_JAR):
    raise FileNotFoundError(f"TsDetect JAR not found at {TSDETECT_JAR}")

if not os.path.exists(ANDROID_PROJECT_PATH):
    raise FileNotFoundError(f"Android project path not found: {ANDROID_PROJECT_PATH}")

# Run TsDetect
try:
    print("Running TsDetect to detect test smells...")
    command = [
        "java",
        "-jar",
        TSDETECT_JAR,
        "-p",
        ANDROID_PROJECT_PATH,
        "-o",
        OUTPUT_FILE
    ]
    subprocess.run(command, check=True)

    print(f"Test smell analysis completed. Report saved in {OUTPUT_FILE}")

    # Read and analyze the output file
    test_smell_counts = defaultdict(int)
    total_test_smells = 0

    with open(OUTPUT_FILE, "r") as f:
        lines = f.readlines()

    print("\n--- Detected Test Smells ---\n")
    for line in lines:
        match = re.search(r"- (.+)", line)  # Extract test smell names
        if match:
            smell_name = match.group(1).strip()
            test_smell_counts[smell_name] += 1
            total_test_smells += 1

    # Display summary of test smells
    print(f"Total Test Smells Found: {total_test_smells}\n")
    print("Breakdown of Test Smells:")
    for smell, count in sorted(test_smell_counts.items(), key=lambda x: x[1], reverse=True):
        print(f"  {smell}: {count}")

except subprocess.CalledProcessError as e:
    print(f"Error running TsDetect: {e}")
except Exception as e:
    print(f"An error occurred: {e}")
