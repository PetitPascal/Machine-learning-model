## Study title
“Telemedicine adoption in cardiology: determinants and predictors identified using Bayesian model averaging and machine learning”

# Model name
TED_xgb_model.rds

# Model type
XGBoost (binary classification)

# Description
This model predicts telemedicine use (TM use) based on 41 predictor variables included in the study.
The model was optimized through hyperparameter tuning.

# Predictor variables
The full list of predictors included in the model:
•	*TM_know*: TM knowledge (1: very bad, 5: very good)

•	*barrier_tech*: TM barrier - acquisition of technology (0: no, 1: yes)

•	*internet_connect*: TM barrier - poor internet connection (0: no, 1: yes)

•	*impl_eff*: TM barrier - implementation effort (0: no, 1: yes)

•	*remu*: TM barrier - no remuneration possible (0: no, 1: yes)

•	*remu2*: TM barrier - current remuneration structure insufficient (0: no, 1: yes)

•	*secu*: TM barrier - data security (0: no, 1: yes)

•	*data*: TM barrier - insufficient data for the benefit of patients (0: no, 1: yes)

•	*hypertension*: TM use suitable for hypertension (0: no, 1: yes)

•	*heart*: TM use suitable for heart failure (0: no, 1: yes)

•	*cardiac*: TM use suitable for cardiac arrhythmias (0: no, 1: yes)

•	*event_monitor*: TM use suitable for monitoring an event (0: no, 1: yes)

•	*treatment*: TM use suitable for treatment with pacemaker, defibrillator, cardiac resynchronization systems (0: no, 1: yes)

•	*acute_event*: TM use relevant in acute events (0: no, 1: yes)

•	*weight*: TM use relevant for basic monitoring of weight (0: no, 1: yes)

•	*blood*: TM use relevant for basic monitoring of blood pressure (0: no, 1: yes)

•	*ECG*: TM use relevant for basic monitoring of ECG (0: no, 1: yes)

•	*handling*: TM use relevant for handling/complications of drugs/medical devices (0: no, 1: yes)

•	*consult*: TM use relevant for the consultation of colleagues (0: no, 1: yes)

•	*extension*: TM use relevant for extension of the aftercare interval (0: no, 1: yes)

•	*acute_event2*: TM use less suitable in acute events (0: no, 1: yes)

•	*weight2*: TM use less suitable for basic monitoring of weight (0: no, 1: yes)

•	*blood2*: TM use less suitable for basic monitoring of blood pressure (0: no, 1: yes)

•	*ECG2*: TM use less suitable for basic monitoring of ECG (0: no, 1: yes)

•	*handling2*: TM use less suitable for handling/complications of drugs/medical devices (0: no, 1: yes)

•	*consult2*: TM use less suitable for the consultation of colleagues (0: no, 1: yes)

•	*extension2*: TM use less suitable for extension of the aftercare interval (0: no, 1: yes)

•	*assess_relev*: Assessment of relevant TM training among colleagues (0: no, 1: yes)

•	*assess_willing*: Assessment of the willingness of colleagues to train on TM topic (0: no, 1: yes)

•	*TM_course*: TM knowledge (0: no, 1: yes)

•	*invest*: Willingness to invest for TM (0: no, 1: yes)

•	*TM_use_perso*: TM use for own health (0: no, 1: yes)

•	*age*: Age (1: 20-29 years, 2: 30-39 years, 3: 40-49 years, 4: 50-59 years, 5: 60-69 years)

•	*female*: Self-identified as female (0: no, 1: yes)

•	*male*: Self-identified as male (0: no, 1: yes)

•	*gen_med*: Being a general medicine specialist (0: no, 1: yes)

•	*int_med*: Being an internal medicine specialist (0: no, 1: yes)

•	*cardio*: Being a cardiologist (0: no, 1: yes)

•	*prime_care*: Outpatient care (0: no, 1: yes)

•	*location*: Practice location (1:Being located in a big city (> 100,000 inhabitants), 2: Being located in a medium-sized town  (20,000 - 100,000 inhabitants), 3: Being located in a small town (5,000 - 20,000 inhabitants))

•	*nb_patient*: Number of average patients per quarter (continuous: [0; +inf[)

# Key hyperparameters
•	max_depth = 3

•	learning_rate = 0.1

•	nrounds = 100

•	subsample = 1

•	colsample_bytree = 1

•	min_child_weight = 1

•	scale_pos_weight = 1.25

•	eval_metric = auc

# Performance Metrics
•	AUC: 0.88 (0.75; 1.00)

•	Sensitivity: 0.79

•	Specificity: 0.80

•	Accuracy: 0.79 (0.62; 0.91)

•	Precision: 0.83

•	Negative predictive value: 0.75

•	F1 score: 0.81

# Software Environment
•	R version: 4.5.0

•	tidyverse: 2.0.0

•	data.table: 1.17.8

•	mllrnrs: 0.06

•	broom: 1.0.10

•	doParallel: 1.0.17

•	splitTools: 1.0.1

•	conflicted: 1.2.0

•	grid: 4.5.1

•	gridExtra: 2.3

•	RColorBrewer: 1.1-3

•	foreach: 1.5.2

•	mlbench: 2.1-6

•	mlexperiments: 0.0.8

•	caret: 7.0-1

•	MLmetrics: 1.1.3

•	patchwork: 1.3.2

•	xgboost: 1.7.11.1

•	parallel: 4.5.1

# Notes
•	The model does not include original data.

•	All data-associated components were removed prior to saving.

•	The model is intended for reproducibility and external validation only.
