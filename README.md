# MechaCar_Statistical_Analysis

## Deliverable 1 - Linear Regression to Predict MPG

Linear Model Equation:
mpg = (-104.0) + (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD 

![Linear_Regression_Results](https://github.com/abhi82git/MechaCar_Statistical_Analysis/blob/fc2c5d2bdc506737a525e9df24b7be3b5b370bec/Linear_Regression_Results.png)

From the above output we can see that:

 - The vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. On the other hand, the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance in the dataset.

- The p-Value for this model, p-Value: 5.35e-11, is much smaller than the assumed significance level of 0.05. This indicates there is sufficient evidence to reject our null hypothesis, which ftranslates to ta non-zero slope for the model.

- The r-squared value is 0.7149, which means approximately 71% of all mpg predictions will be determined by this model. Hence, this linear model does predict mpg of MechaCar prototypes effectively.


## Deliverable 2 - Summary Statistics on Suspension Coils

- Based on the following snapshot on stats for all the manufacturing lots, the variance for coils is 62.293 which is well inside the threshold of 100 pounds per square inch (ppsi).
![Total_Summary_DF](https://github.com/abhi82git/MechaCar_Statistical_Analysis/blob/fc2c5d2bdc506737a525e9df24b7be3b5b370bec/Total_Summary_DF.png)

- Going deeper and looking into the stats for each manufacturing lot individually however shows the true picture. While Lot 1 and Lot 2 are performing well within requirements with 0.98 and 7.47 ppsi, Lot 3 has a variance of 170.29 which is not only well beywond requirement but it is pulling the overall variance of the lots too.
![Lot_Summary_DF](https://github.com/abhi82git/MechaCar_Statistical_Analysis/blob/fc2c5d2bdc506737a525e9df24b7be3b5b370bec/Lot_Summary_DF.png)


## Deliverable 3 - T-Tests on Suspension Coils
From the snapshots below,  we can see the true mean of the sample is 1498.78. With a p-Value of 0.06, which is higher than 0.05, there is NOT enough evidence to reject the null hypothesis. Thus, the mean of all three of these manufacturing lots is statistically similar to the  population mean of 1500.
![t-test_mean_without_log](https://github.com/abhi82git/MechaCar_Statistical_Analysis/blob/fc2c5d2bdc506737a525e9df24b7be3b5b370bec/t-test_mean_without_log.png)

Looking at each individual lots:
- Lot 1 sample has the true sample mean of 1500. With a p-Value of 1, the null hypothesis cannot be rejected that sample and population means are statistically similar.
- Lot 2 has the same outcome with a sample mean of 1500.02, a p-Value of 0.61. With a p-Value of 0.61, the null hypothesis cannot be rejected that sample and population means are statistically similar.
- However Lot 3, is different. Here the sample mean is 1496.14 and the p-Value is 0.04, which is lower than 0.05. There is sufficient evidence to reject null hypothesis and conclude that the means of population and sample for Lot 3 are stistically different.
![t-test_all_lots_without_log](https://github.com/abhi82git/MechaCar_Statistical_Analysis/blob/fc2c5d2bdc506737a525e9df24b7be3b5b370bec/t-test_all_lots_without_log.png)



## Deliverable 4 - Study Design: MechaCar vs Competition
This study would involve collecting data on MechaCar and its comparable models across  different manufacturers over the last 5 years.

- What are the competitions' comparable models,
- Which cars will MechaCar be competing with head-to-head? 
- Which factors will look at the study to determine the relevant to selling price?

### Metrics
- Horse Power: Dependent Variable
- Safety Feature Rating: Independent Variable
- Price: Independent Variable
- Engine (Electric, Hybrid, Gasoline): Independent Variable
- Resale Value: Independent Variable
- Maintenace Cost: Independent Variable
- MPG: Independent Variable

### Hypothesis: Null and Alternative
- Null Hypothesis (Ho): MechaCar's perfromance measured by horse power is staitistically equal to competitor's cars based on other factors analyzed over a poeriod of 5 years.
- Alternative Hypothesis (Ha): MechaCar's perfromance measured by horse power is not staitistically equal to competitor's cars based on other factors analyzed over a poeriod of 5 years.

### Statistical Tests
- A multiple linear regression to determine the factors that have the highest correlation/predictability with horse power
- t-tests to compare the mean horse power for various groups of cars from other manufacturers

### Data Needed
- Selling Price of vehicles
- Number of cylinders in each car
- Engine Type
- MPG
- Resale Value
- Safety Ratings


