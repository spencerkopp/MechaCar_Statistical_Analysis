# MechaCar_Statistical_Analysis

## Overview
The purpose of this project is to review production data for insights which may help the manufacturing team inluding:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Results

### Multiple Linear Regression
<img width="371" alt="Capture" src="https://user-images.githubusercontent.com/107224097/193650252-b21bfbf1-7b08-47cb-9359-680e39d090b6.PNG">

### Lot Summary Statistics 
<img width="496" alt="lot_summary" src="https://user-images.githubusercontent.com/107224097/193650297-bdc9274c-ff8e-4e59-9d7f-22c5ef266554.PNG">

### Total Summary
<img width="354" alt="total_summary" src="https://user-images.githubusercontent.com/107224097/193650482-ac780ef3-dd2e-4296-bf0b-9a668389b98a.PNG">

### Suspension T-Test
<img width="389" alt="suspension_ttest" src="https://user-images.githubusercontent.com/107224097/193650398-330acc4c-42fc-4810-a2f6-028761dda6a2.PNG">

## Analysis 

### Linear Regression to Predict MPG
The null hypothesis for this model would be that length, weight, spoiler angle, clearance, and all wheel drive have no statistically significant impact on mpg performance. 

The resulting model to predict mpg could be expressed as:
mpg = -104 + (6.3)length + (.0012)weight + (.069)spoilerangle + (3.5)clearance + (-3.4)awd

The p-value for this model is 5.35e-11, which is smaller than the significance level of .05%. With this in mind, it is possible to reject the null hypothesis. Variables weight, spoiler angle, and awd all have p-values of greater than .05, indicating that these variables do not account for a statistically significant relationship with mpg. Variables ground clearance and length both have p-values of less than .05, indicating that these variables do account for a statistically significant relationship with mpg. A R-squared value of .71 is evidence that the slope of the linear model is non-zero. The linear model does predict mpg of MechaCar prototypes moderately effectively, especially with the ground clearance and length variables.

### Sumary Statistics on Suspension Coils
The design specifications for the MechaCar coils dictate that the variance of suspension coils should not exceed 100 pounds per square inch. According to the total summary, the variance across all lots is 62. However, when the summary statistics for each lot is calculated, Lot3 has a variance of 170. The current manufacturing data meets the design specification for all manufacturing lots in total, but fails the design specification when each lot is considered individually (due to lot 3).

### T-Tests on Suspension Coils
The first t-test of all lots resulted in a p-value of .06, which is above the assumed significance level of .05. This indicates that the null hypothesis cannot be rejected, and provides support for the null hypthesis that the true population mean is equal to 1500.

The t-test of Lot1 resulted in a p-value of 1, which is above the assumed significance level of .05. This indicates that the null hypothesis cannot be rejected, and provides support for the null hypothesis that the true sample mean is equal to the population mean of 1500.

The t-test of Lot2 resulted in a p-value of .6, which is above the assumed significance level of .05. This indicates that the null hypothesis cannot be rejected, and provides support for the null hypothesis that the true sample mean is equal to the population mean of 1500.

The t-test of Lot3 resulted in a p-value of .04, which is below the assumed significance level of .05. This indicates that the null hypothesis can be rejected, and provides support for the alternative hypothesis that the true sample mean is not equal to the population mean of 1500.

### Study Design: MechaCar vs Competition
In order to compare the performance of MechaCar vehicles against the performance of vehicles from other manufacturers, some important metrics to consider could inlude cost, city or highway mpg, horsepower, and safety rating. For example, with testing highway and city mpg against competitors, the null hypothesis would be that there is no difference between the highway and city mpg of MechaCar and the highway and city mpg of competitors. The alternative hypothesis would be that there is a statistically significant difference between the highway and city mpg of MechaCar and the highway and city mpg of competitors. The one-sample t-test would be the best choice for this comparison as it concerns comparing the mean of a sample (MechaCar) vs. a population (all competitors). The data that would be needed to run this test would be the city and highway mpg figures for MechaCar as well ans the city and highway mpg figures for all relevant competitors.
