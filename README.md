# MechaCar_Statistical_Analysis
Analysis of MechaCar performance using statistical testing



## Linear Regression to Predict MPG

**Picture 1.1: MechaCar multiple linear regression to predict MPG summary statistics**  
![MechaCar multiple linear regression summary](https://github.com/joshuanallen/MechaCar_Statistical_Analysis/blob/1b536d38c20da1c6e28e75cafdb0a4e5d57ecdc5/images/summary_multiple_linear_regression_mechaCar_mpg.png)

From the summary statistics for the model, vehicle length and ground clearance are both below the siginficance level of 0.05 and can be inferred as to having an statistically significant impact on MPG. It also shows statistical significance for the intercept implying there are significant features that may need scaling or transforming to improve the model.

While the r-squared value for the multiple linear regression model is 0.71 and our p-value is well below the significance level of 0.05 implying the slope of our line is not zero, but the null hypothesis cannot be rejected because there are fewer variables that show statistical significance than those that don't in the current model.

 While our model's statistics pass our r-squared and p-value test (>0.7 and <0.05, respectively), we can state that this model does not effectively predict mpg of the MechaCar prototypes as the statisitcal significance of the intercept implies this model is subject to over fitting. Additionally, it tells us there may be other variables that explain the variability not included in the model. 


 ## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

 **** Insert picture of total summary ****

 **** Insert picture of lot summary ****

 Based on the above summary data above, we can conclude Lots 1 and 2 meet the design specification for the MechaCar suspension coils because the statistical variance of the data in those lots does not exceed 100 PSI. Additionally, we can conclude that manufacturing Lot 3, does not meet the design specifications as the statistical variance of 170 PSI for the lot exceeds the minimum variance of 100 PSI.

