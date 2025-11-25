## Study title
Spartakus II

# Model name
Total illness duration_XGBoost_model.rds

# Model type
XGBoost (linear regression)

# Description
This model predicts the total illness duration before the first diagnosis based on 183 predictor variables included in the study.
The model was optimized through hyperparameter tuning.

# Predictor variables
The full list of predictors included in the model:
•	*Age*: Age (continuous)

•	*Diagnosis_1*: Correct diagnosis - general medicine (yes: 1, no: 0)

•	*Diagnosis_3*: Correct diagnosis - orthopedics and trauma surgery (yes: 1, no: 0)

•	*Diagnosis_7*: Correct diagnosis - other (yes: 1, no: 0)

•	*Diagnosis_2*: Correct diagnosis - rheumatology (yes: 1, no: 0)

•	*Cover1*: Coverage of Information needs in percent Phase I (continuous)

•	*Cover2*: Coverage of Information needs in percent Phase II (continuous)

•	*Cover3*: Coverage of Information needs in percent Phase III (continuous)

•	*Occupation_3*: Current occupation - Academic professions (yes: 1, no: 0)

•	*Occupation_5*: Current occupation - Clerical support workers and related occupations (yes: 1, no: 0)

•	*Occupation_8*: Current occupation - Craft and related trades workers (yes: 1, no: 0)

•	*Occupation_2*: Current occupation - Managers (yes: 1, no: 0)

•	*Occupation_11*: Current occupation - None (yes: 1, no: 0)

•	*Occupation_6*: Current occupation - Service workers and sales workers (yes: 1, no: 0)

•	*Occupation_4*: Current occupation - Technicians and associate non-technical professions (yes: 1, no: 0)

•	*Rheum_delay*: Delay in consulting rheumatologist (continuous)

•	*Nutri_sup*: Desire for nutritional support (yes: 1, no: 0)

•	*Des_sup_4*: Desired support services - backpain (yes: 1, no: 0)

•	*Des_sup_5*: Desired support services - better trained specialists (yes: 1, no: 0)

•	*Des_sup_3*: Desired support services - early training (yes: 1, no: 0)

•	*Des_sup_2*: Desired support services - online course (yes: 1, no: 0)

•	*Des_sup_6*: Desired support services - other (yes: 1, no: 0)

•	*Des_sup_1*: Desired support services - self-help group (yes: 1, no: 0)

•	*DE5*: Diet effect - better mobility (yes: 1, no: 0)

•	*DE1*: Diet effect - less fatigue (yes: 1, no: 0)

•	*DE4*: Diet effect - less pain (yes: 1, no: 0)

•	*DE3*: Diet effect - lower disease activity (yes: 1, no: 0)

•	*DE6*: Diet effect - other (yes: 1, no: 0)

•	*DE2*: Diet effect - overall more energy (yes: 1, no: 0)

•	*NT5*: Diet type - anti-inflammatory (yes: 1, no: 0)

•	*NT11*: Diet type - fasting (yes: 1, no: 0)

•	*NT7*: Diet type - gluten-free/less wheat (yes: 1, no: 0)

•	*NT3*: Diet type - less meat (yes: 1, no: 0)

•	*NT10*: Diet type - less/no sugar (yes: 1, no: 0)

•	*NT12*: Diet type - mediterranean/rich in healthy fats (yes: 1, no: 0)

•	*NT4*: Diet type - no pork (yes: 1, no: 0)

•	*NT2*: Diet type - vegan (yes: 1, no: 0)

•	*NT1*: Diet type - vegetarian (yes: 1, no: 0)

•	*Education*: Education level (1: no degree, 2: lower secondary school, 3: secondary school, 4: high school diploma (german Abitur), 5: university)

•	*EP15*: Emotions Phase I - angry (yes: 1, no: 0)

•	*EP19*: Emotions Phase I - anxious (yes: 1, no: 0)

•	*EP12*: Emotions Phase I - clueless (yes: 1, no: 0)

•	*EP11*: Emotions Phase I - desperate (yes: 1, no: 0)

•	*EP5*: Emotions Phase I - exempt (yes: 1, no: 0)

•	*EP14*: Emotions Phase I - frustrated (yes: 1, no: 0)

•	*EP1*: Emotions Phase I - happy (yes: 1, no: 0)

•	*EP13*: Emotions Phase I - helpless (yes: 1, no: 0)

•	*EP9*: Emotions Phase I - neutral (yes: 1, no: 0)

•	*EP17*: Emotions Phase I - not seen (yes: 1, no: 0)

•	*EP16*: Emotions Phase I - not taken seriously (yes: 1, no: 0)

•	*EP21*: Emotions Phase I - psychologically stressed (yes: 1, no: 0)

•	*EP4*: Emotions Phase I - relieved (yes: 1, no: 0)

•	*EP18*: Emotions Phase I - sad (yes: 1, no: 0)

•	*EP2*: Emotions Phase I - satisfied (yes: 1, no: 0)

•	*EP20*: Emotions Phase I - shocked (negative) (yes: 1, no: 0)

•	*EP3*: Emotions Phase I - shocked (positive) (yes: 1, no: 0)

•	*EP6*: Emotions Phase I - taken seriously (yes: 1, no: 0)

•	*EP10*: Emotions Phase I - unsure (yes: 1, no: 0)

•	*EPP15*: Emotions Phase II - angry (yes: 1, no: 0)

•	*EPP19*: Emotions Phase II - anxious (yes: 1, no: 0)

•	*EPP8*: Emotions Phase II - clear (yes: 1, no: 0)

•	*EPP12*: Emotions Phase II - clueless (yes: 1, no: 0)

•	*EPP11*: Emotions Phase II - desperate (yes: 1, no: 0)

•	*EPP5*: Emotions Phase II - exempt (yes: 1, no: 0)

•	*EPP14*: Emotions Phase II - frustrated (yes: 1, no: 0)

•	*EPP1*: Emotions Phase II - happy (yes: 1, no: 0)

•	*EPP13*: Emotions Phase II - helpless (yes: 1, no: 0)

•	*EPP9*: Emotions Phase II - neutral (yes: 1, no: 0)

•	*EPP17*: Emotions Phase II - not seen (yes: 1, no: 0)

•	*EPP16*: Emotions Phase II - not taken seriously (yes: 1, no: 0)

•	*EPP21*: Emotions Phase II - psychologically stressed (yes: 1, no: 0)

•	*EPP4*: Emotions Phase II - relieved (yes: 1, no: 0)

•	*EPP18*: Emotions Phase II - sad (yes: 1, no: 0)

•	*EPP2*: Emotions Phase II - satisfied (yes: 1, no: 0)

•	*EPP7*: Emotions Phase II - seen (yes: 1, no: 0)

•	*EPP20*: Emotions Phase II - shocked (negative) (yes: 1, no: 0)

•	*EPP3*: Emotions Phase II - shocked (positive) (yes: 1, no: 0)

•	*EPP6*: Emotions Phase II - taken seriously (yes: 1, no: 0)

•	*EPP10*: Emotions Phase II - unsure (yes: 1, no: 0)

•	*EPPP15*: Emotions Phase III - angry (yes: 1, no: 0)

•	*EPPP19*: Emotions Phase III - anxious (yes: 1, no: 0)

•	*EPPP8*: Emotions Phase III - clear (yes: 1, no: 0)

•	*EPPP12*: Emotions Phase III - clueless (yes: 1, no: 0)

•	*EPPP11*: Emotions Phase III - desperate (yes: 1, no: 0)

•	*EPPP5*: Emotions Phase III - exempt (yes: 1, no: 0)

•	*EPPP14*: Emotions Phase III - frustrated (yes: 1, no: 0)

•	*EPPP1*: Emotions Phase III - happy (yes: 1, no: 0)

•	*EPPP13*: Emotions Phase III - helpless (yes: 1, no: 0)

•	*EPPP9*: Emotions Phase III - neutral (yes: 1, no: 0)

•	*EPPP17*: Emotions Phase III - not seen (yes: 1, no: 0)

•	*EPPP16*: Emotions Phase III - not taken seriously (yes: 1, no: 0)

•	*EPPP21*: Emotions Phase III - psychologically stressed (yes: 1, no: 0)

•	*EPPP4*: Emotions Phase III - relieved (yes: 1, no: 0)

•	*EPPP18*: Emotions Phase III - sad (yes: 1, no: 0)

•	*EPPP2*: Emotions Phase III - satisfied (yes: 1, no: 0)

•	*EPPP7*: Emotions Phase III - seen (yes: 1, no: 0)

•	*EPPP20*: Emotions Phase III - shocked (negative) (yes: 1, no: 0)

•	*EPPP6*: Emotions Phase III - taken seriously (yes: 1, no: 0)

•	*EPPP10*: Emotions Phase III - unsure (yes: 1, no: 0)

•	*Employment_status_10*: Employment status - early retiree (yes: 1, no: 0)

•	*Employment_status_6*: Employment status - full-time (>35h/week) (yes: 1, no: 0)

•	*Employment_status_12*: Employment status - other (yes: 1, no: 0)

•	*Employment_status_5*: Employment status - part-time (<35h/week) (yes: 1, no: 0)

•	*Employment_status_9*: Employment status - retired (yes: 1, no: 0)

•	*Federal_state_1*: Federal state - Baden-Wurttemberg (yes: 1, no: 0)

•	*Federal_state_2*: Federal state - Bavaria (yes: 1, no: 0)

•	*Federal_state_3*: Federal state - Berlin (yes: 1, no: 0)

•	*Federal_state_7*: Federal state - Hesse (yes: 1, no: 0)

•	*Federal_state_9*: Federal state - Lower Saxony (yes: 1, no: 0)

•	*Federal_state_10*: Federal state - North Rhine-Westphalia (yes: 1, no: 0)

•	*Federal_state_11*: Federal state - Rhineland-Palatinate (yes: 1, no: 0)

•	*Federal_state_15*: Federal state - Schleswig-Holstein (yes: 1, no: 0)

•	*First_consult_1*: First consultation - general medicine (yes: 1, no: 0)

•	*First_consult_5*: First consultation - opthalmology (yes: 1, no: 0)

•	*First_consult_3*: First consultation - orthopedics and trauma surgery (yes: 1, no: 0)

•	*First_consult_2*: First consultation - rheumatology (yes: 1, no: 0)

•	*FS4*: First symptom - alternating buttock pain (yes: 1, no: 0)

•	*FS1*: First symptom - back pain (yes: 1, no: 0)

•	*FS14*: First symptom - diarrhea/digestive issues (yes: 1, no: 0)

•	*FS5*: First symptom - fatigue (yes: 1, no: 0)

•	*FS9*: First symptom - joint pain/swelling (large joints) (yes: 1, no: 0)

•	*FS10*: First symptom - joint pain/swelling (small joints) (yes: 1, no: 0)

•	*FS2*: First symptom - morning stiffness (yes: 1, no: 0)

•	*FS16*: First symptom - other (yes: 1, no: 0)

•	*FS6*: First symptom - performance decline (yes: 1, no: 0)

•	*FS15*: First symptom - skin rash (yes: 1, no: 0)

•	*FS11*: First symptom - tendon insertion pain/swelling (yes: 1, no: 0)

•	*FS12*: First symptom - uveitis (yes: 1, no: 0)

•	*FS3*: First symptom - waking up at night due to pain (yes: 1, no: 0)

•	*FS7*: First symptom - weight loss (yes: 1, no: 0)

•	*Doc_freq1*: Frequency of doctor visits - times per quarter in Phase I (continuous)

•	*Doc_freq2*: Frequency of doctor visits - times per quarter in Phase II (continuous)

•	*Doc_freq3*: Frequency of doctor visits - times per quarter in Phase III (continuous)

•	*Health_insurance_2*: Health insurance - private health insurance (yes: 1, no: 0)

•	*Health_insurance_1*: Health insurance - statuory health insurance (yes: 1, no: 0)

•	*Income*: Household income (1: < 20 000€, 2: 20 000-29 999€, 3: 30 000-39 999€, 4: 40 000-49 999€, 5: 50 000-59 999€, 6: 69 000-69 999€, 7: 70 000-79 999€, 8: 80 000-89 999€, 9: 90 000-99 999€, 10: > 100 000€)

•	*Household*: Household size (continuous)

•	*Covid*: Impact of COVID-19 (1: not all, 2: little, 3: neutral, 4: strong, 5: very strong)

•	*Day1*: Impact on daily life in percent Phase I (continuous)

•	*Day2*: Impact on daily life in percent Phase II (continuous)

•	*Day3*: Impact on daily life in percent Phase III (continuous)

•	*Info1*: Information needs in percent Phase I (continuous)

•	*Info2*: Information needs in percent Phase II (continuous)

•	*Info3*: Information needs in percent Phase III (continuous)

•	*Lone_after*: Loneliness after disease (1: never, 2: hardly, 3: occasionally, 4: often, 5: very often)

•	*Lone_before*: Loneliness before disease (1: never, 2: hardly, 3: occasionally, 4: often, 5: very often)

•	*N_rheum*: Number of rheumatologists consulted (continuous)

•	*N_spe*: Number of specialists consulted (continuous)

•	*Nutrition*: Nutrition (yes: 1, no: 0)

•	*Nutri_advice*: Nutritional advice (yes: 1, no: 0)

•	*Journey*: Patient journey (general reflection) (1: poor, 2: problematic, 3: okay, 4: good, 5: excellent)

•	*Physiotherapy*: Physiotherapy (yes: 1, no: 0)

•	*Place*: Place of residence (1: rural area (< 5 000 inhabitants), 2: small town (5 000-20 000inhabitants), 3: medium town (20 000-100 000 inhabitants), 4: large city (> 100 000 inhabitants), 5: metropolis (> 1 000 000 inhabitants))

•	*Psy_sup1*: Psychological support in percent in Phase I (continuous)

•	*Psy_sup2*: Psychological support in percent in Phase II (continuous)

•	*Psy_sup3*: Psychological support in percent in Phase III (continuous)

•	*Self_conf1*: Self-confidence in percent in Phase I (continuous)

•	*Self_conf2*: Self-confidence in percent in Phase II (continuous)

•	*Self_conf3*: Self-confidence in percent in Phase III (continuous)

•	*Self_after*: Self-efficacy after diagnosis (1: poor, 2: rather poor, 3: adequate, 4: good, 5: very good)

•	*Self_before*: Self-efficacy before diagnosis (1: poor, 2: rather poor, 3: adequate, 4: good, 5: very good)

•	*SE10*: Self-explanation - disc herniation (yes: 1, no: 0)

•	*SE13*: Self-explanation - other (yes: 1, no: 0)

•	*SE6*: Self-explanation - other chronic disease (yes: 1, no: 0)

•	*SE11*: Self-explanation - overuse after physical activity (yes: 1, no: 0)

•	*SE3*: Self-explanation - stress response (yes: 1, no: 0)

•	*SE5*: Self-explanation - symptom of known preexisting condition (yes: 1, no: 0)

•	*Self_explanation*: Self-explanation for symptom onset (yes: 1, no: 0)

•	*Gender*: Gender (male:1, no: female)

•	*Social_after*: Social integration after diagnosis (1: poor, 2: rather poor, 3: adequate, 4: good, 5: very good)

•	*Social_before*: Social integration before diagnosis (1: poor, 2: rather poor, 3: adequate, 4: good, 5: very good)

•	*Symptom_onset*: Symptom onset (continuous)

•	*Doc_trust1*: Trust in medical professionals - trust in percent in Phase I (continuous)

•	*Doc_trust2*: Trust in medical professionals - trust in percent in Phase II (continuous)

•	*Doc_trust3*: Trust in medical professionals - trust in percent in Phase III (continuous)

•	*PT_type_6*: Types of therapy - education (yes: 1, no: 0)

•	*PT_type_3*: Types of therapy - medication (yes: 1, no: 0)

•	*PT_type_2*: Types of therapy - movement therapy (yes: 1, no: 0)

•	*PT_type_4*: Types of therapy - operation (yes: 1, no: 0)

•	*PT_type_8*: Types of therapy - other (yes: 1, no: 0)

•	*PT_type_1*: Types of therapy - physiotherapy (yes: 1, no: 0)

•	*PT_type_5*: Types of therapy - rehabilitation (yes: 1, no: 0)

•	*Wait_time*: Waiting time for rheumatologist appointment (continuous)


# Key hyperparameters
•	max_depth = 3

•	learning_rate = 0.1

•	nrounds = 100

•	subsample = 1

•	colsample_bytree = 1

•	min_child_weight = 1

•	eval_metric = rmse

# Performance Metrics
•	R2: 0.55

•	MAE: 1249

•	RMSE: 1977

•	Pearson’s correlation coefficient r: 0.76

•	CCC: 0.74

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
