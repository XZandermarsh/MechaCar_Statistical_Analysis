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

## T-Tests on Suspension Coils
* The t-tests show that the overall data does not have a statistical (non-random) variance from the assumed mean of 1500. While the mean of the overall data was 1498.78, the p-value was 0.06028. Based on a 95% confidence interval, this meets the p-value requirement (>0.05) to for us to accept the null hypothesis (no statistical difference from expected value)
* Lot 1 and Lot 2 also meet the p-value requirement based on p-values of 1 and 0.6072, respectively. They are not statistically different from the assumed population mean.
* Lot 3 had a p-value of 0.04168, meaning that sample did not meet the p-value requirement. Therefore, we must reject the null hypothesis, and this sample can be said to be statistically different from the population data.

![alt text](https://github.com/XZandermarsh/MechaCar_Statistical_Analysis/blob/main/t_test_Results_ScreenShot.png "t-test Results Screenshot")

## Study Design: MechaCar vs Competition

### Cost
* Null Hypothesis: There is no statistical difference in cost between MechaCar and competitors.
* Alternative Hypothesis: There is a statistical difference between MechaCar and competitors.
* Study Design: Since cost is a continuous dependent variable, we could perform a two-sample t-test using MechaCar and competitor data to understand if there is a statistical difference between the distribution means of car prices at each company. Data needed to perform the test would be a sample from each car company of sold vehicles. Simply averaging the price of each car in their lineups would not give a representative view of their true cost, since lower cost models tend to sell in higher volumes.

### Fuel Efficiency
* Null Hypothesis: There is no statistical difference in fuel efficiency between MechaCar and competitors.
* Alternative Hypothesis: There is a statistical difference between MechaCar and competitors.
* Study Design: Again, since fuel efficiency is a continuous dependent variable, we could perform a two-sample t-test using MechaCar and competitor data to understand if there is a statistical difference between the distribution means of miles per gallon. Data needed to perform the analysis would be highway and city fuel economy data for each company. The two-sample t-test could be performed a total of three times (overall mpg, highway mpg, city mpg).
