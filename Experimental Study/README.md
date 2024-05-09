# Test & coverage information collection

## Prerequisites
- Python 3.8
- Java version 8
- Boost Graph Library (1.66.0)
- Android Studio (Giraffe | 2022.3.1)
- Gradle 7.3

## Python Requirements
- beautifulsoup4>=4.6.3
- numpy>=1.15.2

## How to run
- If you do not have the requirements installed in python: run "pip install -r requirements.txt" to install all the requirements
- Build the app and configure it to use JaCoCo to generate report.
- Within the app, first identify the folder where the app code and the tests are localized, i.e., "android/src/main/java/" and "android/src/test/java/" and where the Jacoco store its coverage reports, i.e., "android/build/reports/jacoco/jacocoUnitTestReport/html/".
- To run the coverage collector: "python coverage_collector.py <--app path--> <--test path--> <--Jacoco report path-->".
- To run the stat collector: "python stat_collector.py <--app path--> <--source code path--> <--Jacoco report path-->".

## Dataset
- The apps folder contains 30 sample apps
