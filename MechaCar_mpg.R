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