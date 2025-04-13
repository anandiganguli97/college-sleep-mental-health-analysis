# 🎓 Sleepless & Stressed: Uncovering Mental Health Risk in College Students with R

This project explores how sleep patterns, academic stress, and behavioral factors impact mental health among college students. Using a real-world dataset from 253 students at a liberal arts college, we apply advanced regression and logistic modeling in R to identify strong predictors of depression, anxiety, and stress. The findings have clear real-world potential — from wellness screening and early intervention to academic policy redesign.

## 📊 Dataset: `SleepStudy-1`

Collected from a liberal arts college in the Northeastern U.S., this dataset includes:
- 27 variables covering sleep behavior, GPA, mood, cognition, and lifestyle habits
- 253 students aged 18–24
- Uploaded in [`/data`](../../tree/main/data)

**Note:** The dataset (`SleepStudy.csv`) is included solely for academic demonstration purposes and may not be redistributed or reused outside this repository.

## 🔍 Research Questions

1. Does sleep duration predict higher psychological distress (DASScore)?
2. Which student behaviors are most predictive of poor mental health?
3. Does the effect of sleep differ based on early class schedules?
4. Can we accurately predict clinical depression using logistic regression?

## 🧪 Methods

- R packages: `tidyverse`, `ggplot2`, `broom`, `car`
- Models used:
  - Simple & Multiple Linear Regression
  - Interaction Modeling
  - Logistic Regression + Odds Ratios
- Visualizations saved in [`/outputs/plots`](../../tree/main/outputs/plots)

## 📈 Key Visuals

| ![Density Plot](outputs/plots/Density%20plot_DASscore%20vs%20avg%20sleep.png) | ![DAS Histogram](outputs/plots/Rplot_histogram_DASscore.png) | ![Sleep Histogram](outputs/plots/Rplot_histogram_avg%20sleep.png) |
|:--:|:--:|:--:|
| **DAS vs Sleep Distributions** | **Right-skewed distress levels** | **Most students sleep ~8 hrs** |

## 🔑 Key Findings

- **Poor sleep quality** is the strongest predictor of high DASScore (*p < 0.001*)
  - Each point increase in poor sleep quality → **+2.6 DASScore**
  - Increases odds of clinical depression by **36%**
- **Higher GPA** correlates with increased mental health distress — likely due to academic pressure
- **Sleep duration alone** is not significant after controlling for other factors
- Male students report **lower DASScore** than females on average

## 🔬 Real-World Applications

- 📋 Screen students for mental health risk using sleep quality
- 📊 Build predictive tools for wellness teams
- 🧠 Inform scheduling and workload policies to reduce burnout
- 📚 Extend findings with larger or longitudinal datasets

## 📂 Repository Structure

college-sleep-mental-health-analysis/ ├── data/ │ └── SleepStudy.csv ├── scripts/ │ └── SleepStudy.R ├── outputs/ │ ├── plots/ │ │ ├── Rplot_histogram_DASscore.png │ │ ├── Rplot_histogram_avg sleep.png │ │ └── Density plot_DASscore vs avg sleep.png ├── README.md ├── LICENSE (MIT or CC0)

arduino
Copy
Edit

## 🚀 How to Reproduce

Clone this repo and run the script:

```r
source("scripts/SleepStudy.R")


👤 Author
Anandi Ganguli
MPH Candidate, University of Minnesota


