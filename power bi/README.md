# Power BI Files
This folder contains the Power BI report file and its supporting documents.

## Files
Final imbewu dashboard ko.pbix — the Power BI Desktop file (open with Power BI Desktop)
dax_measures.md — full documentation of every DAX measure used in the report



## How to Open the `.pbix` File

1. Install [Microsoft Power BI Desktop](https://powerbi.microsoft.com/desktop/) (free, Windows only).
2. Download the `.pbix` file from this repository.
3. Open the downloaded file using Power BI Desktop.
4. If prompted to locate the data sources, select the original project datasets that you downloaded from the repository.
5. If necessary, update the file paths in Power Query to match the location where you saved the datasets.
6. Click **Refresh** to reload the data.
7. Explore the interactive dashboards, visualisations and business insights.

**Note:** The project datasets were analysed and cleaned separately in Databricks SQL and Power BI. 
Power BI uses its own data sources and Power Query transformations; it is not directly connected to Databricks.

## Dashboard pages

The Power BI report consists of four dashboard pages designed to explore sales performance, store activity and customer behaviour across 18 months.

### 1. Sales Performance Overview

Provides a high-level view of overall sales performance through key performance indicators (KPIs) displayed at the top of the dashboard.

Key visualisations include:

* Revenue by month to identify sales trends over time.
* Store performance to compare performance across stores.
* Average unit cost by product category.

### 2. Store and Customer Analysis

Focuses on store-level performance and customer distribution.

Key visualisations include:

* Customer count per store.
* Customer count by loyalty tier.
* Province and date filters to explore performance across different locations and time periods.

### 3. 6-Month Performance Analysis

The 18-month dataset is also presented in six-month segments to make it easier to examine changes and trends across different periods.

### 4. 18-Month Overview

Provides an overview of the full 18-month period, allowing users to examine the broader sales and customer trends.

### Dashboard Screenshots

Screenshots of the Power BI dashboards are available in the [view dashboard image](Images.png) folder.

The screenshots include six-month breakdowns and the full 18-month overview.

### Interactive Dashboard

To explore the complete interactive report, download the `.pbix` file from this repository and open it using Microsoft Power BI Desktop.

