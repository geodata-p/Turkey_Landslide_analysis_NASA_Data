[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/geodata-p/Turkey_Landslide_analysis_NASA_Data/blob/main/notebooks/Landslides.ipynb)

## Table of Contents
- [Executive Summary](#executive-summary)
- [Project Overview](#Project-Overview)
- [Data & Tools](#Data&Tools)
- [Reproducibility](#Reproducibility)
- [Objectives](#Objectives)
- [Key Findings](#Key-Findings )

# Executive Summary
This project analyses Turkey’s landslides from the NASA Global Landslide Catalog to understand when, why, and where fatalities occur. A reproducible Python pipeline (Colab/requirements.txt) cleans the global dataset, isolates Turkey, and quantifies risk by seasonality, trigger type, and hotspot. Results show downpours as the dominant driver of risk—they occur more often, are deadlier per event (median 3 vs. 1.5 for rainfall), and account for over twice the total fatalities (34 vs. 15). We also surface spatial contrasts: provinces like Rize and Diyarbakır show high severity (5 and 3 fatalities per event with few events), while Artvin shows higher frequency but moderate severity (~1.5 fatalities per event).



# Project Overview
This repository analyses Turkey’s landslides from the NASA Global Landslide Catalog using Python, linking triggers to fatalities, revealing seasonal patterns, and highlighting provincial hotspots. It includes reproducible notebooks, clean data pipelines, and publication-ready visuals.

https://data.nasa.gov/dataset/global-landslide-catalog-export


# Data & Tools
- Data: NASA Global Landslide Catalog (CSV)
- Python 3.12.11


# Reproducibility
  ## Requirements & Installation
  This project was developed and tested with:
  - pandas 2.2.2     - numpy 2.0.2     - matplotlib 3.10.0    - plotly 5.20.0     - python-dateutil 2.9.0.post0

    To ensure reproducibility, a `requirements.txt` file is included in this repository. This allows anyone to recreate the same environment and run the code reliably.

          ### Option A: Clone repo (requires Git)
          git clone https://github.com/geodata-p/Turkey_Landslide_analysis_NASA_Data.git
          cd Turkey_Landslide_analysis_NASA_Data
          pip install -r requirements.txt

          ### Option B: Download ZIP (no Git required)
          - Click the green “Code” button on GitHub → Download ZIP
          - Extract the folder
          - Open terminal/Anaconda Prompt and run:
          cd path/to/Turkey_Landslide_analysis_NASA_Data
          pip install -r requirements.txt



# Objectives

NASA data cleaning → filtering Turkey → analysis → insights

 **Clean & classify** the NASA dataset
The NASA Global Landslide Catalog was uploaded into Google Colab using pandas, column names were standardised, and  python-dateutil was applied for robust date parsing to produce a clean, analysis-ready table.
The resulting table was then filtered to isolate Turkey-specific events.

 **Analyse seasonality**
Landslide events were grouped by month using pandas and visualised with matplotlib. Total fatalities and average fatalities per event were charted by month across 2007–2016 to highlight higher-risk months.

 **Compare impact by trigger**
Using matplotlib, bar charts were created to show and compare the number of events, total fatalities, average fatalities per event and the percentage of deadly events for each landslide trigger in Turkey. Boxplots were generated with matplotlib to compare the distribution of fatalities across different landslide triggers, demonstrating variability (median, quartiles, and outliers) rather than relying solely on averages.


 **Identify spatial hotspots** 
A bubble map was created using matplotlib, where bubble size represents fatalities and color encodes landslide triggers, making spatial clusters and deadly hotspots immediately visible. At the provincial level, a dual-axis chart compares the frequency of events (bars) with their severity (average fatalities per event, line), highlighting regions that are risk-intensive due to either frequent or unusually deadly landslides.




 # Key Findings 
 
 **Seasonality:** 
 
__Seasonality of events__: Most landslides occur between July–November (midsummer to autumn).

__Severity in winter__: January (mid-winter) events are deadlier per landslide compared to other months.

 <img width="630" height="470" alt="Events frequency vs month" src="https://github.com/user-attachments/assets/51ea6ad6-34af-4884-83ea-fcc58cc49f10" />
 <img width="833" height="578" alt="Average fatalities per event vs month" src="https://github.com/user-attachments/assets/b1b32b26-d706-41a1-8b53-69e6d863190d" />



 **Trigger impact:**  
 
__Fatality likelihood__: ~70% of both downpour- and rainfall-triggered events result in ≥1 fatality.

__Frequency__: Downpours occur more often — 11 events vs 8 for rainfall.

__Average severity__: Downpours have a higher median fatalities per event — 3.0 vs 1.5 (rainfall).

__Total impact__: Downpours caused over 2× the total fatalities — 34 vs 15 (rainfall).

__Distribution (boxplot)__: Downpours show higher median (3) and higher maximum (12) fatalities per event than rainfall (1.5 median, 7 max).

__Conclusion__: The combination of higher frequency, greater per-event severity, and larger overall impact makes downpours the dominant driver of landslide risk in Turkey; rainfall is secondary but still significant.
 
<img width="630" height="470" alt="Percentage with fatalities vs trigger" src="https://github.com/user-attachments/assets/362cbaef-6a56-4b64-b80c-bd419cdb81e0" />

<img width="989" height="590" alt="Number of events vs trigger" src="https://github.com/user-attachments/assets/4335da30-6cf8-4887-8f68-076abc29ec93" />


 <img width="989" height="590" alt="Average fatalities per event vs trigger" src="https://github.com/user-attachments/assets/9c3d50b2-4801-4dae-be75-a57a9ea8c00c" />

<img width="630" height="470" alt="Total fatalities vs trigger" src="https://github.com/user-attachments/assets/629a60ff-6283-4f4a-b8fe-ca938658a3d8" />

 <img width="1189" height="590" alt="Boxplot-fatalities per event vs trigger" src="https://github.com/user-attachments/assets/5bbde934-75f8-4a84-9e94-201b1690818b" />


 **Hotspots:** 
 
 __Rize__: Rare landslide events, but very severe — about 5 fatalities per event.

__Diyarbakır__: Also rare but high severity — around 3 fatalities per event.

__Artvin__: More frequent landslides, but lower per-event severity — about 1.5 fatalities per event.

__Insight__: Some provinces face fewer but deadlier events, while others experience more frequent but less severe landslides.

 <img width="1189" height="593" alt="events -fatalities per event-vs cities" src="https://github.com/user-attachments/assets/1fe5e1e3-5a92-460f-8b1d-c70bd96166b9" />
<img width="790" height="690" alt="Bubble map -trigger-latitude vs longitude" src="https://github.com/user-attachments/assets/cb9fef74-7b7f-4440-9d7c-810260523251" />




