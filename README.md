# MechaCar_Statistical_Analysis

## Overview
The purpose of this project is to review production data for insights which may help the manufacturing team inluding:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Results

### Multiple Linear Regression
<img width="371" alt="Capture" src="https://user-images.githubusercontent.com/107224097/193650252-b21bfbf1-7b08-47cb-9359-680e39d090b6.PNG">

### Lot Summary Statistics 
<img width="496" alt="lot_summary" src="https://user-images.githubusercontent.com/107224097/193650297-bdc9274c-ff8e-4e59-9d7f-22c5ef266554.PNG">

### Suspension T-Test
<img width="389" alt="suspension_ttest" src="https://user-images.githubusercontent.com/107224097/193650398-330acc4c-42fc-4810-a2f6-028761dda6a2.PNG">

### Total Summary
<img width="354" alt="total_summary" src="https://user-images.githubusercontent.com/107224097/193650482-ac780ef3-dd2e-4296-bf0b-9a668389b98a.PNG">

## Analysis 

### Linear Regression to Predict MPG
The null hypothesis for this model would be that length, weight, spoiler angle, clearance, and all wheel drive have no statistically significant impact on mpg performance. 

The resulting model to predict mpg could be expressed as:
mpg = -104 + (6.3)length + (.0012)weight + (.069)spoilerangle + (3.5)clearance + (-3.4)awd

The p-value for this model is 5.35e-11, which is smaller than the significance level of .05%. With this in mind, it is possible to reject the null hypothesis. Variables weight, spoiler angle, and awd all have p-values of greater than .05, indicating that these variables do not account for a statistically significant relationship with mpg. Variables ground clearance and length both have p-values of less than .05, indicating that these variables do account for a statistically significant relationship with mpg. A R-squared value of .71 is evidence that the slope of the linear model is non-zero. The linear model does predict mpg of MechaCar prototypes effectively, especially with the ground clearance and length variables.

## Statistical Study Design
