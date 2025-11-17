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
•	*TM_know*: TM knowledge

•	*barrier_tech*: TM barrier - acquisition of technology

•	*internet_connect*: TM barrier - poor internet connection

•	*impl_eff*: TM barrier - implementation effort

•	*remu*: TM barrier - no remuneration possible

•	*remu2*: TM barrier - current remuneration structure insufficient

•	*secu*: TM barrier - data security

•	*data*: TM barrier - insufficient data for the benefit of patients

•	*hypertension*: TM use suitable for hypertension

•	*heart*: TM use suitable for heart failure

•	*cardiac*: TM use suitable for cardiac arrhythmias

•	*event_monitor*: TM use suitable for monitoring an event

•	*treatment*: TM use suitable for treatment with pacemaker, defibrillator, cardiac resynchronization systems

•	*acute_event*: TM use relevant in acute events

•	*weight*: TM use relevant for basic monitoring of weight

•	*blood*: TM use relevant for basic monitoring of blood pressure

•	*ECG*: TM use relevant for basic monitoring of ECG

•	*handling*: TM use relevant for handling/complications of drugs/medical devices

•	*consult*: TM use relevant for the consultation of colleagues

•	*extension*: TM use relevant for extension of the aftercare interval

•	*acute_event2*: TM use less suitable in acute events

•	*weight2*: TM use less suitable for basic monitoring of weight

•	*blood2*: TM use less suitable for basic monitoring of blood pressure

•	*ECG2*: TM use less suitable for basic monitoring of ECG

•	*handling2*: TM use less suitable for handling/complications of drugs/medical devices

•	*consult2*: TM use less suitable for the consultation of colleagues

•	*extension2*: TM use less suitable for extension of the aftercare interval

•	*assess_relev*: Assessment of relevant TM training among colleagues

•	*assess_willing*: Assessment of the willingness of colleagues to train on TM topic

•	*TM_course*: TM knowledge

•	*invest*: Willingness to invest for TM

•	*TM_use_perso*: TM use for own health

•	*age*: Age

•	*female*: Self-identified as female

•	*male*: Self-identified as male

•	*gen_med*: Being a general medicine specialist

•	*int_med*: Being an internal medicine specialist

•	*cardio*: Being a cardiologist

•	*prime_care*: Outpatient care

•	*location*: Practice location

•	*nb_patient*: Number of average patients per quarter

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
