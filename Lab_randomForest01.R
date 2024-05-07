# Knowledge Mining: Random Forest
# File: Lab_randomForest01.R
# Theme: Tree-based models: Random Forest
# Reference: 
# Breiman, Leo. 2001. "Random forests." Machine learning 45: 5-32.
# https://link.springer.com/content/pdf/10.1023/A:1010933404324.pdf
# Liaw, Andy, and Matthew Wiener. 2002. "Classification and regression by randomForest." R news 2, no. 3: 18-22
# Liaw, A., & Wiener, M. 2002. randomForest: Breiman and Cutler's Random Forests for Classification and Regression. R package version X.Y-Z. https://CRAN.R-project.org/package=randomForest
 

# Load the required libraries
# install.packages("randomForest")
library(randomForest)
library(dplyr)
library(tidyr)
library(ggplot2)

# Load the iris dataset
data(iris)

# Examine the dataset
head(iris)

# Data visualization
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = .8) +
  theme_bw()

# Split the data into training and testing sets (70% train, 30% test)
# You can try different splits
set.seed(123)
train_index <- sample(1:nrow(iris), 0.7 * nrow(iris)) 
train_data <- iris[train_index, ] # Training data
test_data <- iris[-train_index, ] # Testing data

# Train a random forest model
set.seed(123)
model <- randomForest(Species ~ ., data = train_data, ntree = 100)

# Make predictions on the test data
predictions <- predict(model, test_data)
importance(model)
# Calculate the accuracy of the model
accuracy <- mean(predictions == test_data$Species)
cat("Accuracy:", accuracy) # Print results

