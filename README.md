# Project Overview
This repository analyses landslide events in **Turkey** from 2007 to 2016 using the **NASA Global Landslide Catalog** with Python. It explores how different triggers, particularly rainfall, relate to **fatalities**, **seasonality**, and **event frequency**.

https://data.nasa.gov/dataset/global-landslide-catalog-export)


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
 **Seasonality:** Most events happen in July-Nov (midsummer-autumn) , but Jan(mid-winter) events are deadlier per landslide.

 **Trigger impact:** Both downpour- and rainfall-triggered landslides in Turkey are often fatal (~70% of events). However, downpours occur more frequently (11 vs 8), are deadlier on average (median 3 fatalities vs 1.5 for rainfall), and have caused over twice the total fatalities (34 vs 15). Boxplot analysis further confirms that downpours have a higher median (3 vs 1.5) and maximum (12 vs 7) fatalities per event compared to rainfall. This combination of higher frequency, greater severity, and larger overall impact makes downpours the dominant driver of landslide risk in Turkey, while rainfall remains a secondary but still significant hazard.
 
 **Hotspots:** Rize and Diyarbakır stand out as high-severity hotspots, where rare landslide events result in disproportionately high fatalities (5 and 3 deaths per event, respectively). Artvin, by contrast, experiences more frequent landslides but at lower per-event severity (~1.5 fatalities).
 
 **Event size & impact:** ?

 **Reporting note:** ?

