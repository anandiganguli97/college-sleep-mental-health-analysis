#College Sleep-Mental health Analysis
# Load necessary libraries
library(tidyverse)
library(ggplot2)
library(psych)

# 1. Import CSV data
sleep_data <- read_csv("data/SleepStudy_1.csv")  # Adjust path as needed

# 2. View first few rows
head(SleepStudy_1)

# 3. View structure and variable types
str(SleepStudy_1)
glimpse(SleepStudy_1)

# 4. Summary statistics: DASScore
summary(SleepStudy_1$DASScore)
describe(SleepStudy_1$DASScore)  # From psych package for more details

# 5. Histogram of DASScore
ggplot(SleepStudy_1, aes(x = DASScore)) +
 geom_histogram(binwidth = 10, fill = "purple", color = "black") +
  labs(title = "Histogram of DAS Score",
       x = "DAS Score", y = "Count")

# 6. Summary statistics: AverageSleep
summary(sleep_data$AverageSleep)
describe(sleep_data$AverageSleep)

# 7. Histogram of AverageSleep
ggplot(SleepStudy_1, aes(x = AverageSleep)) +
  geom_histogram(binwidth = 1, fill = "orange", color= "black") +
  labs(title = "Histogram of Average Sleep (Hours)",
       x = "Average Sleep", y = "Count")

# 8. Basic plots to explore both variables side by side
# Density plot for both
SleepStudy_1 %>%
  select(DASScore, AverageSleep) %>%
  pivot_longer(cols = everything(), names_to = "Variable", values_to = "Value") %>%
  ggplot(aes(x = Value, fill = Variable)) +
  geom_density(alpha = 0.4) +
  labs(title = "Density Plot: DASScore vs AverageSleep") +
  facet_wrap(~ Variable, scales = "free")

#9. Model 1: Simple Linear regression model between Average sleep and DAS Score
   Model1<-lm(DASScore~ AverageSleep, data=SleepStudy_1)
   summary(Model1)
   
#10. Model 2:Multiple Linear regression model bewteen DASScore and other variables
   #Converting categorical variables into factors
   SleepStudy_1<-SleepStudy_1 %>%
     mutate(
       Gender=as.factor(Gender),
       AlcoholUse=as.factor(AlcoholUse),
       AllNighter= as.factor(AllNighter),
       LarkOwl=as.factor(AllNighter)
     )
 #Model 2: MLR model
   model2 <- lm(
     DASScore ~ AverageSleep + PoorSleepQuality + GPA + CognitionZscore +
       Gender + AlcoholUse + AllNighter + LarkOwl,
     data = SleepStudy_1
   )
   
   summary(model2)
   
#Model 3:Exploring the interaction between AverageSleep and EarlyClass
   SleepStudy_1<-SleepStudy_1 %>%
     mutate (EarlyClass=as.factor(EarlyClass))
   
Model3<- lm(DASScore ~ AverageSleep * EarlyClass + GPA + CognitionZscore + Gender + PoorSleepQuality,
data=SleepStudy_1)
summary(Model3)

#Model 4:Logistic regression model for Clinical depression
# Recode DepressionStatus: 1 = moderate or severe, 0 = normal
SleepStudy_1 <- SleepStudy_1 %>%
  mutate(
    DepressBinary = ifelse(DepressionStatus == "normal", 0, 1),
    DepressBinary = as.factor(DepressBinary)  # Treat as binary categorical for glm
  )

#Fitting Logistic regression model
Model4<-glm(DepressBinary ~ AverageSleep + PoorSleepQuality + GPA + CognitionZscore +
              Gender + AllNighter + AlcoholUse + LarkOwl,
            data=SleepStudy_1, family=binomial)
summary(Model4)
exp(cbind(OR = coef(Model4), confint(Model4)))


