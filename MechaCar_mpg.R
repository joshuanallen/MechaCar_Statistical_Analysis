# Deliverable 1

# Step 3. Use Library function to load dplyr package
library(dplyr)


# Step 4. Import and read in the MechaCar_mpg.csv file as a dataframe.
mechaCar_mpg_table <- read.csv(file='MechaCar_mpg.csv', check.names=F,stringsAsFactors = F)


# Step 5. Perform linear regression using the lm() function. 
# In the lm() function, pass in all six variables (i.e., columns), 
# and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mpg_table)


# Step 6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mpg_table)
)


# Deliverable 2

# Step 2. import and read in the Suspension_Coil.csv file as a table.
mechaCar_coil_table <- read.csv(file='Suspension_Coil.csv', check.names=F,stringsAsFactors = F)

# Step 3.Write an RScript that creates a total_summary dataframe using the summarize() function
# to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
coil_total_summary <- mechaCar_coil_table %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),STDEV_PSI=sd(PSI)) #create summary table with multiple columns


# Step 4. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions 
# to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
coil_lot_summary <- mechaCar_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),STDEV_PSI=sd(PSI), .groups = 'keep') #create summary table



# Deliverable 3

# Step 1. write an RScript using the t.test() function to determine if the PSI across all manufacturing lots 
# is statistically different from the population mean of 1,500 pounds per square inch.
t.test(mechaCar_coil_table$PSI,mu=1500)


# Step 2. write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument 
#to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

# Lot 1
coil_lot1 <- subset(mechaCar_coil_table, Manufacturing_Lot=="Lot1")

t.test(coil_lot1$PSI,mu=1500)


# Lot 2
coil_lot2 <- subset(mechaCar_coil_table, Manufacturing_Lot=="Lot2")

t.test(coil_lot2$PSI,mu=1500)


# Lot 3
coil_lot3 <- subset(mechaCar_coil_table, Manufacturing_Lot=="Lot3")

t.test(coil_lot3$PSI,mu=1500)





