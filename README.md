# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
- As shown in the screenshot below, vehicle length and ground clearance provided a non-random amount of variance to mpg in the dataset.
- The slope of the linear model is non-zero due to the coefficients for the vehicle length and ground clearance. The other coefficients are near-zero and do not contribute significantly.
- The linear model has an adjusted R-squared value of 0.68. A model is considered strong when the R-squared is greater than 0.7, therefore this model is not considered a strong predictor of mpg.
![mpg_screenshot](Analyses/mpg.png)

## Summary Statistics on Suspension Coils
- The design specification for the suspension dictates that the coil variance should not exceed 100 psi.
- If all lots are combined, the total variance is 62 psi which is passing per the spec.
- When the lots are individually analyzed, lot 3 appears to have a manufacturing defect because it's variance is 170 psi which does not pass the spec.
 
![total_psi_screenshot](Analyses/total_psi.png)
![each_psi_screenshot](Analyses/each_psi.png)

## T-Tests on Suspension Coils
- Lots 1 and 2 have means that are not statistically different from the population mean of 1500 psi.
- This is confirmed through their p-values that are >0.05.
- Lot 3 on the other hand is p<0.05 and therefore has a statistically different mean than the population.
![t-test_screenshot](Analyses/t-test.png)

## Study Design: MechaCar vs Competition
After completing the internal analysis for the MechaCar performance attributes, it's time to take the show on the road! In order to garner international attention, the MechaCar needs to outperform its competitors. 

To show the world the capabilities of the MechaCar, an analysis on the **horsepower to weight ratio** of MechaCar against all other cars will be performed. Horsepower and weight are two highly influential factors in a car's top speed, something most car enthusiasts speak at length about. If a car has a lot of horsepower but weighs a lot, it won't be very fast. And the same can be said for it the car is light but has no horsepower.

The null hypothesis is that there is no difference between MechaCar's horsepower:weight ratio. The alternative hypothesis is that there may be a difference between the horsepower:weight ratio.

A student's t-test will be used because it can compare the same metric across multiple models of cars. To perform the test, weights and horsepowers of multiple models of cars will need to be taken, and for each model there will need to be multiple data points to ensure reliability of the model.
