library(ggplot2) 
# Generate sample data 
set.seed(123) 
temperature_data <- data.frame( 
  City = rep(c("New York", "Los Angeles", "Chicago", "Houston", "Phoenix", "Philadelphia"), 
             each = 100), 
  Season = rep(c("Winter", "Spring", "Summer", "Fall"), 150), 
  Temperature = round(rnorm(600, mean = 60, sd = 10)) 
) 
# Scatter plot 
ggplot(temperature_data, aes(x = Season, y = Temperature)) + 
  geom_point() + 
  labs(title = "Temperature vs Season", x = "Season", y = "Temperature") + 
  theme_classic() 
# Line plot 
ggplot(temperature_data, aes(x = Season, y = Temperature, color = City)) + 
  geom_line() + 
  labs(title = "Temperature Trends by City", x = "Season", y = "Temperature") + 
  scale_color_manual(values = c("blue", "red", "green", "yellow", "purple", "orange")) 
# Bar chart 
ggplot(temperature_data, aes(x = City, y = Temperature)) + 
  geom_bar(stat = "identity") + 
  labs(title = "Temperature by City", x = "City", y = "Temperature") + 
  # Replacing theme_axis_texts_x() with theme() to customize axis text 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  
# This rotates x-axis text by 45 degrees and adjusts horizontal alignment 
# Histogram 
ggplot(temperature_data, aes(x = Temperature)) + 
  geom_histogram(bins = 30, color = "black", fill = "gray") + 
  labs(title = "Temperature Distribution", x = "Temperature", y = "Frequency") + 
  theme_classic() 
# Box plot 
ggplot(temperature_data, aes(x = City, y = Temperature)) + 
  geom_boxplot(fill = "lightblue", color = "darkblue") + 
  labs(title = "Temperature Box Plot by City", x = "City", y = "Temperature") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 