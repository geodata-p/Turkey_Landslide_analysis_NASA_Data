# Project Overview
This repository analyses landslide events in **Turkey** using the **NASA Global Landslide Catalog** with Python. It explores how different triggers—particularly rainfall—relate to **fatalities**, **seasonality**, and **event frequency**.

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

- **Clean & classify** the NASA dataset
The NASA Global Landslide Catalog was uploaded into Google Colab using pandas, column names were standardised, and  python-dateutil was applied for robust date parsing to produce a clean, analysis-ready table.
The resulting table was then filtered to isolate Turkey-specific events.

- **Analyse seasonality**
Landslide events were grouped by month using pandas and visualised with matplotlib. Total fatalities and average fatalities per event were charted by month across 2007–2016 to highlight higher-risk months.

- **Compare impact by trigger**
Using matplotlib, bar charts were created to show and compare the number of events, total fatalities and the percentage of deadly events for each landslide trigger in Turkey.


- **Identify spatial hotspots** ()









- # Key Findings 
- **Seasonality:** Most events happen in July-Nov (midsummer-autumn) , but Jan(mid-winter) events are deadlier per landslide.
- 
- **Trigger impact:** Both downpour- and rainfall-triggered landslides are highly lethal, with ~70% of events resulting in fatalities. However, downpours occur more frequently (11 vs 8 events) and have caused more than twice as many deaths overall (34 vs 15). This combination of higher frequency and higher total impact makes downpours the primary driver of landslide risk in Turkey, while rainfall remains a secondary but still serious hazard.
- 
- **Hotspots:** NE Turkey provinces (Rize–Artvin) are hotspots, with rainfall-induced slides causing repeated fatalities**.?
- 
- **Event size & impact:** ?
- 
- **Reporting note:** ?

