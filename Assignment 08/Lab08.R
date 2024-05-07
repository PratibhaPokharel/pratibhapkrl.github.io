
# Knowledge Mining: Lab08
# Author: "Pratibha Pokharel"




Best Subset, Forward Stepwise, & Backward 
Stepwise
• Which of the 3 models with k predictors has the smallest 
  training RSS?
• Best Subset
 • Because forward and backward stepwise determine models that depend on which 
    predictors they pick first as they iterate toward the kth model (a poor choice early on 
    cannot be undone)
• Which of the 3 models with k predictors has the smallest test RSS?
 • Best Subset
  • Because it considers more models than the other methods, however the 
    other models might have better luck picking a model that fits the test data 
    better since it would be less subject to overfitting
  • Outcome depends more heavily on the choice of test set/validation 
    method than on the selection metho