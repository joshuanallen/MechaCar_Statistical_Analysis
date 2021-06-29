# MechaCar_Statistical_Analysis
Analysis of MechaCar performance using statistical testing

## Linear Regression to Predict MPG

**Picture 1.1: MechaCar multiple linear regression to predict MPG summary statistics**  
![MechaCar multiple linear regression summary](https://github.com/joshuanallen/MechaCar_Statistical_Analysis/blob/377c1b5b7bfcb792dd7c1f7d3485eea6d1f8d487/images/summary_regression_mechaCar_mpg.png)

From the summary statistics for the model, vehicle length and ground clearance are both below the siginficance level of 0.05 and can be inferred as to having an statistically significant impact on MPG. It also shows statistical significance for the intercept implying there are significant features that may need scaling or transforming to improve the model.

While the r-squared value for the multiple linear regression model is 0.71 and our p-value is well below the significance level of 0.05 implying the slope of our line is not zero, but the null hypothesis cannot be rejected because there are fewer variables that show statistical significance than those that don't in the current model.

While our model's statistics pass our r-squared and p-value test (>0.7 and <0.05, respectively), we can state that this model does not effectively predict mpg of the MechaCar prototypes as the statisitcal significance of the intercept implies this model is subject to over fitting. Additionally, it tells us there may be other variables that explain the variability not included in the model. 


## Summary Statistics on Suspension Coils
*Note: The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI).*

**Picture 2.1: PSI Summary Statistics for all Suspension Coil Manufacturing Lots**

![PSI Summary Statistics for all Suspension Coil Manufacturing Lots](https://github.com/joshuanallen/MechaCar_Statistical_Analysis/blob/f82711e7b0c0733a8423f7a51dff80c2e5a3ed86/images/suspension_coil_total_summary.png)


Based on the summary data in Picture 2.1 we can conclude the overall manufacturing lots **in total** meet the current specification requirements as the variance of the data is less than 100 PSI.

**Picture 2.2: PSI Summary Statistics by Suspension Coil Manufacturing Lots**
![PSI Summary Statistics by Suspension Coil Manufacturing Lots](https://github.com/joshuanallen/MechaCar_Statistical_Analysis/blob/f82711e7b0c0733a8423f7a51dff80c2e5a3ed86/images/suspension_coil_lot_summary.png)


Based on the summary data in Picture 2.2 above, we can conclude **Lots 1 and 2 meet the design specification** for the MechaCar suspension coils because the statistical variance of the data in those lots does not exceed 100 PSI. Additionally, we can conclude  manufacturing **Lot 3 does not meet the design specifications** as the statistical variance of 170 PSI for the lot exceeds the minimum variance of 100 PSI.


## T-Tests on Suspension Coils
*Note: Assuming a significance level of 0.05*

### Total Lot

**Picture 3.1: T-test for all manufacturing lots to population mean (1500 PSI)**
![T-test for all manufacturing lots to population mean (1500 PSI)](https://github.com/joshuanallen/MechaCar_Statistical_Analysis/blob/9d0f809d3d51248d9543c99f3fded405328100cf/images/Total_PSI_t-test.png)


Based on p-value of 0.06 in the t-test data above, we can conclude that the overall manufacturing lot **does not provide enough evidence to eliminate the null hypotheses** of the production population being similar to the mean assumption of 1500 PSI.

### Lot 1

**Picture 3.2: T-test for Lot 1 to population mean (1500 PSI)**
![T-test for Lot 1 to population mean (1500 PSI)](https://github.com/joshuanallen/MechaCar_Statistical_Analysis/blob/9d0f809d3d51248d9543c99f3fded405328100cf/images/Lot1_PSI_t-test.png)


Based on p-value of 1 in the t-test data above, we can conclude that the overall manufacturing lot **does not provide enough evidence to eliminate the null hypotheses** of the production population being similar to the mean assumption of 1500 PSI.

### Lot 2

**Picture 3.3: T-test for Lot 2 to population mean (1500 PSI)**
![T-test for Lot 2 to population mean (1500 PSI)](https://github.com/joshuanallen/MechaCar_Statistical_Analysis/blob/9d0f809d3d51248d9543c99f3fded405328100cf/images/Lot2_PSI_t-test.png)


Based on p-value of 0.6 in the t-test data above, we can conclude that the overall manufacturing lot **does not provide enough evidence to eliminate the null hypotheses** of the production population similar to the mean assumption of 1500 PSI.

### Lot 3

**Picture 3.4: T-test for Lot 3 to population mean (1500 PSI)**
![T-test for Lot 3 to population mean (1500 PSI)](https://github.com/joshuanallen/MechaCar_Statistical_Analysis/blob/9d0f809d3d51248d9543c99f3fded405328100cf/images/Lot3_PSI_t-test.png)


Based on p-value of 0.04 in the t-test data above, we can conclude that the overall manufacturing lot **allows us to reject the null hypotheses** of the production population being similar to the mean assumption of 1500 PSI. This would indicate an issue with this specific production lot.

### Conclusions
While the total lot may be within the statistical range of the assumption of 1500 PSI, it is clear that unlike Lots 1 and 2, Lot 3 has a production issue that should be looked at.

## Study Design: MechaCar vs. Competition
Consumers typically value the vehicle's price when selecting from similar vehicle offerings.

### Assumptions
Vehicle class, add-on packages, and engine type are similar across vehicle prices being compared.

### Metrics to test
price = vehicle MSRP ($)
    - Consumers value a vehicle's cost as it is typically one of the largest monetary purchases made in a person's lifetime.

### Hypotheses
- Null: MechaCar's market price is priced the same as similar vehicles on the market.
- Alternative: MechaCar's market priced is over-priced compared to similar vehicles on the market.

### Statistical testing
To test the above hypotheses we would perform a two-sample t-test using sales data for the MechaCar as one dataset and a random sample of the larger sales data for the rest of similar cars on the market.

### Data needed for statistical testing
We would need a dataset for MechaCar's sales prices and one separate sales price dataset for all similar vehicles. 

