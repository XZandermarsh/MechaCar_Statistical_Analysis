# MechaCar_Statistical_Analysis
 
## Linear Regression to Predict MPG
* Based on the linear regression results, we can conclude that vehicle length and ground clearance are unlikely to provide a random amount of variance to mpg in the multiple linear regression model.
* The slope is not considered zero based on the estimated coefficients in the results. Vehicle Length has a coefficient of 6.267, and Ground Clearance has a coefficient of 3.546. Since these factors are the only ones with a signficiant impact on mpg, we would expect the slope to be non-zero.
* This model predicts effectively based on an R-squared value given near the bottom of the summary output (0.7149), which equates to an r-value of 0.8455, a strong correlation on the Pearson scale.
![alt text](https://github.com/XZandermarsh/MechaCar_Statistical_Analysis/blob/main/Linear_Regression_ScreenShot.png "Linear Regression Results Screenshot")

## Summary Statistics on Suspension Coils
* The sumamry data for the total of all lots shows that the coils meet the variance specification of <100 PSI, as the calculated variance is 62.3. However, when summarizing by manufacturing lot, we can see that Lot 3 does not meet the variance specification, showing a variance of 170 PSI.

![alt text](https://github.com/XZandermarsh/MechaCar_Statistical_Analysis/blob/main/Total_Summary_ScreenShot.png "Total Summary Screenshot")
![alt text](https://github.com/XZandermarsh/MechaCar_Statistical_Analysis/blob/main/Lot_Summary_ScreenShot.png "Lot Summary Screenshot")
