Mariam Sanusi
Anta Mbaye
April 22, 2025
IS477

# Final Project Status Update

## Introduction
This project investigates the intersection of housing affordability, socioeconomic disparities, climate risk, and insurance patterns across the United States using integrated 2023 American Community Survey (ACS) data and a Kaggle dataset (InsuranceHub-USA). The goal is to explore multiple research questions related to affordability and risk, with a focus on identifying vulnerable populations and regions disproportionately affected by rising housing costs and climate-related hazards. This update provides a comprehensive review of the progress made on each major task outlined in the original project plan, including data acquisition challenges, methodological refinements, and preliminary findings, accompanied by an updated timeline and necessary plan adjustments based on the current status. 

Data Collection and Integration

The first set of tasks—acquiring and integrating key data sources—has been successfully completed. We downloaded the 2023 American Community Survey (ACS) data using the Census Bureau API, which required an API key to be generated. After accessing the API, we highlighted several variables that overlapped in both datasets. The variables retrieved included S2503_C01_001E (median home value), S2507_C01_001E (renter cost burdens), and detailed household composition variables to distinguish between single-parent and dual-income family structures. We also needed geographic specificity, therefore, the API specifically collected county information and state information instead of generalizing state information. Filtering these datasets to state and county levels allows for cross-state comparison and county-level granularity where needed. 

We also successfully ingested and cleaned the InsuranceHub-USA Kaggle dataset. The state names in the dataset were standardized using a predefined normalization dictionary that converts full names into two-letter abbreviations and filters out the invalid entries. CountyFIPS codes are cleaned by filling NA values with zeros, converting to integers, then padding with leading zeros (e.g., 5 → "005") to maintain a consistent 3-digit format. A StateFIPS mapping dictionary converts state abbreviations to numeric codes (e.g., "CA" → "06"), which are combined with CountyFIPS to create a unique FullFIPS identifier matching the ACS format. With this code, the potential data quality issues were handled as well.
	
## Research Questions Progress

### RQ1:
We explored the relationship between housing cost burdens and family structure. Using ACS data, we calculated the ratio of median housing costs to median income across different household types. This includes comparisons between single-parent households, dual-income households, and multigenerational families.  Disparities were visualized via a Seaborn bar plot (sns.barplot), highlighting burdens on single-parent households. Any infinite value calculated from division was handled by replacing it with np.nan. This allowed the data structure to remain the same while the calculations were completed.

### RQ2: 
We investigated affordability disparities across states with high vs. low poverty rates. We grouped states into categories using ACS poverty rates and applied the National Low Income Housing Coalition (NLIHC) metric of affordable units per 100 extremely low-income (ELI) households. In the code, states were split into poverty tertiles (pd.qcut) and evaluated using an NLIHC-inspired metric: the percentage of homes where median_home_value < 3 * median_income. Results are sorted to compare extremes (e.g., Nevada vs. South Dakota), with affordability gaps quantified as a percentage

### RQ3: 
We examined the shortage of affordable units with three or more bedrooms in relation to family size and household composition. We extracted bedroom distribution from the ACS and merged it with AdjSquareFeet and NumberOfBedrooms from the Kaggle dataset. While distributional analysis is completed, the correlation with household structure and visualization components are still under development.

### RQ4: 
We focused on climate risk and housing affordability. Using the Kaggle dataset’s flood and debris region classifications, we mapped these geospatial risks and began overlaying them with county-level cost-burden data from the ACS. Full integration of climate risk metrics with affordability indices are still in progress.With the Plotly scatter_mapbox, the goal is to map the Flood Zone Risk Level song with the Centroid Latitude/Longitude.

### RQ5:
We looked at insurance claims data as a signal of structural vulnerability and affordability stress. We implemented a LASSO regression model using scikit-learn to predict NumberOfClaims based on variables such as ConstructionType, YearBuilt, and FloodZoneRiskLevel. To enhance interpretability, we used SHAP (SHapley Additive exPlanations) to visualize the influence of each variable.

## Methodology Implementation

We have made significant progress on implementing our chosen methods. For RQ1 to RQ3, we applied multilevel regression models using statsmodels’ mixed effects framework to capture both state-level effects and nested household structures. This approach allows us to model variability more accurately across different demographic slices. For RQ4, we are still struggling to implement spatial analysis on the data.
Our predictive modeling approach for RQ5 is complete, with robust preprocessing pipelines and visual interpretability tools integrated.

## Timeline

We are currently making good progress on our timeline. The datasets were collected and integrated using Python, and the quality of the dataset was proven by both the Kaggle ranking and the fact that an API was created with the United States government to access the initial data. Instead of using OpenRefine to clean our data, we converted our data into CSV files since it was already mostly cleaned, and from there, found out the unique items to remove/clean so the data was easily available for the queries and models to use. Currently, we have gotten far enough to have visualizations and details about the code, yet we have not compiled it all to be in an easy-to-follow, reproducible format. We have the sources of our data for citations, and have been working collaboratively throughout the entire process with regular meetings and check-ins to ensure we are remaining on track and completing all of the tasks in a timely manner.

## Plan Adjustments
Currently, we are not in need of making any adjustments to the plan because we have not hit any roadblocks while following our planned timeline. We have, however, found parts in our code where we changed the original method we were following because we realized it worked better/more efficiently than the way it was previously. We are also considering the addition of a few more research questions so we can use all of the data we have to draw several conclusions and provide a lot to data science.
