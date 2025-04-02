## Mariam Sanusi
## Anta Mbaye
## April 1, 2025
## IS477

# Final Project Plan


# Introduction

Housing affordability is a critical issue in the United States, affecting individuals, families, and communities in different ways. New data from the National Low Income Housing Coalition (2023) reveals the crisis's disproportionate impact: Only 33 affordable rental units exist for every 100 extremely low-income (ELI) households—a deficit of 7.3 million homes that worsened by 8% during the pandemic. With rising housing costs, stagnant wages, and regional economic disparities have made it increasingly difficult for many households to find and maintain affordable housing. This project aims to examine the relationship between housing affordability, demographic characteristics, and socioeconomic factors across the United States, using data from the 2023 American Community Survey (ACS).

By analyzing patterns in housing costs relative to income levels, family structures, and population characteristics, we seek to better understand how affordability challenges differ across various groups and locations. For instance, single-parent households may experience different financial pressures compared to dual-income families, while affordability gaps may be more pronounced in states with higher poverty rates. These insights can help inform housing policies, guide community planning efforts, and support market analyses aimed at addressing disparities in housing access.

Additionally, this study will explore how affordability varies between states, considering economic conditions such as poverty levels and median income distributions. Understanding these patterns can provide a clearer picture of how economic and demographic factors shape housing accessibility, enabling policymakers to develop targeted strategies that address affordability concerns at both state and national levels.

# Research Questions

1. How does the ratio of median housing costs to median income vary across different family structures?
2. How does the ratio of housing costs to income vary between states with high vs. low poverty rates?
3. How do unit types and renter household sizes explain the NLIHC-identified shortage of 3+ bedroom affordable units?
4. How do climate risk factors (WindborneDebrisRegion, FloodZoneRiskLevel) compound housing cost burdens for vulnerable populations?
5. What property characteristics (ConstructionType, YearBuilt) most strongly predict insurance claim frequency (NumberOfClaims), and how does this affect long-term affordability?

# Team

We will work together on each step throughout the whole project to make sure data collection, analysis and interpretation are done smoothly. We will share tasks to keep the workload fair and bring in different perspectives. We will also have regular meetings to go over our findings, resolve problems, and refine our analysis approach. The two of us will collaboratively complete the data preprocessing, analysis, and report through these planned meetings.

# Datasets

In this analysis, we aim to explore the relationships between socioeconomic factors and housing prices across the United States. Real estate prices are influenced by a multitude of factors, including income levels, population density, and housing characteristics. By leveraging data-driven insights, we seek to uncover key trends and correlations that can help predict housing prices more effectively. To achieve this, we will employ predictive modeling techniques that analyze historical and demographic data. Our study is structured to compare economic indicators with real estate pricing trends, providing a comprehensive overview of how different factors contribute to variations in property values.

We will be using two datasets for our analysis. The first dataset is the 2023 American Community Survey (ACS), which provides detailed demographic, economic, and housing data collected by the U.S. Census Bureau. This dataset contains a wide range of variables, including median household income, population estimates, employment statistics, and housing characteristics across different geographical regions. The ACS data will serve as a foundation for understanding socioeconomic conditions that may influence housing prices. Our analysis will test how state-level variations in S2503_C01_001E (home values) and S2507_C01_001E (rent burdens) mirror NLIHC's finding that Nevada has only 17 affordable units/100 ELI households vs. South Dakota's 58. With this dataset, the columns can be hand selected, and as such, we will select columns that are most consistent with the questions we ask and can work in tandem with the other dataset.

The second dataset was collected from Kaggle. The House Price Prediction Dataset from InsuranceHub-USA provides a comprehensive, property-level view of real estate market dynamics across the United States. Unlike conventional housing datasets, this resource contains 127 unique variables, this includes:

- Structural characteristics: Construction type, roof materials (RoofCover), year built (YearBuilt), and square footage (AdjSquareFeet)
- Geospatial risk factors: Distance to coast (DistancetoCoast), flood zones (FloodZoneRiskLevel), sinkhole proximity (SinkholeId), and fire protection infrastructure (DistancetoHydrant)
- Insurance metrics: Claims history (NumberOfClaims), wind resistance ratings (DesignWindSpeed), and prior loss indicators (PPC, BCEG)
- Market dynamics: Last sale price (LastSalePrice), assessment values (ValueofHome), and homestead status (Homestead)

The inclusion of FIPS codes (CountyFIPS) in this dataset allows seamless merging with ACS data as it also has the option to fixate on states and their specific counties.

# Methodology

We will use Python as our primary language to integrate ACS and InsuranceHub datasets. For the first three research questions (which fixate on cost-burden analyses) we will apply multilevel regression with a focus on the states, family structures, and poverty tiers. For the fourth question, we will use geographically weighted regression. And for the final question, we will use LASSO regression to identify the top predictors from the InsuranceHub variables. They key libraries for this project will include pandas for the feature engineering, scipy for correlation tests, and shap for interpreting machine learning outputs.

# Timeline

We will follow a structured timeline to complete the project efficiently. First, we will collect and integrate the datasets using Python, ensuring proper data profiling and quality assessment. Next, we will clean the data using OpenRefine, documenting any transformations to improve accuracy and consistency. Once the data is prepared, we will conduct preliminary analyses and create visualizations to answer our research questions. We will then package the project in a reproducible format, including metadata and citations, while automating the workflow for efficiency. Finally, we will archive the project in a repository to ensure accessibility and obtain a persistent identifier. Throughout the process, we will work collaboratively, holding regular check-ins to track progress and adjust the plan as needed.
