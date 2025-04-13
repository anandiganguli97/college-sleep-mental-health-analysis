# 🎓 Sleepless & Stressed: Uncovering Mental Health Risk in College Students with R

This project explores how sleep patterns, academic stress, and behavioral factors impact mental health among college students. Using a rich dataset from 253 students at a liberal arts college, we apply advanced regression and logistic modeling in R to identify key predictors of depression, anxiety, and stress. The results are both academically rigorous and practically applicable — offering clear direction for student wellness programs, early intervention strategies, and future research.

## 📊 Dataset: `SleepStudy-1`

Collected from a liberal arts college in the Northeastern U.S., this dataset includes:
- 27 variables across sleep behavior, GPA, mood, cognition, and daily habits
- 253 students aged 18–24
- Hosted in [`/data`](../../tree/main/data)

## 🔍 Research Questions

1. Does sleep duration predict higher psychological distress (DASScore)?
2. Which student behaviors are most predictive of mental health burden?
3. Does the effect of sleep depend on early class schedules?
4. Can we accurately predict clinical depression using logistic regression?

## 🧪 Methods

- 📦 R packages: `tidyverse`, `ggplot2`, `broom`, `car`, `dplyr`
- ✅ Models used:
  - Simple & Multiple Linear Regression
  - Interaction Modeling
  - Logistic Regression with Odds Ratios
- 📈 Visualizations saved in [`/outputs/plots`](../../tree/main/outputs/plots)

## 📈 Key Visuals

| ![Density Plot](outputs/plots/Density%20plot_DASscore%20vs%20avg%20sleep.png) | ![DAS Histogram](outputs/plots/Rplot_histogram_DASscore.png) | ![Sleep Histogram](outputs/plots/Rplot_histogram_avg%20sleep.png) |
|:--:|:--:|:--:|
| **DAS vs Sleep Distributions** | **Right-skewed distress levels** | **Most students sleep ~8 hrs** |

## 🔑 Key Findings

- **Poor sleep quality** is the most powerful predictor of higher DASScore (*p < 0.001*)
  - Each 1-point increase in poor sleep score → +2.6 in DASScore
  - Increases odds of clinical depression by **36%**
- **Higher GPA** was unexpectedly associated with higher psychological distress, likely reflecting academic burnout
- **Sleep duration alone** is not a significant predictor after accounting for sleep quality
- Males report lower DASScore on average than females

## 🔬 Real-World Applications

- 🏫 Campus health teams can use sleep quality as a screening tool for distress
- 📊 Predictive models can inform early mental health interventions
- 📚 Researchers can extend this analysis with machine learning or longitudinal data
- 🧠 Administrators can use these insights to guide course scheduling and academic load

## 📂 Repository Structure
college-sleep-mental-health-analysis/
├── data/
│   └── SleepStudy.csv
├── scripts/
│   └── SleepStudy.R
├── outputs/
│   ├── plots/
│   │   ├── Rplot_histogram_DASscore.png
│   │   ├── Rplot_histogram_avg sleep.png
│   │   └── Density plot_DASscore vs avg sleep.png
├── README.md
├── LICENSE (MIT)


## 🚀 How to Reproduce

Clone this repo and run the scripts in order:

```r
source("scripts/01_eda.R")
source("scripts/02_linear_regression.R")
source("scripts/03_interaction_model.R")
source("scripts/04_logistic_regression.R")


👤 Author
Anandi Ganguli
MPH Candidate, University of Minnesota



