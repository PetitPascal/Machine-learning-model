#########################################
## Total illness duration before the first diagnosis
#########################################

# Package loading
library(tidyverse)

#---------------------------------------------------------
## 1. Loading the saved model
loaded_model <- readRDS("Total illness duration_XGBoost_model.rds")

#---------------------------------------------------------
## 2. Preparing new data for prediction

# Replace this with your own new / unseen data
new_data <- data.frame(Age=c(20,45),Diagnosis_1=c(0,1),Diagnosis_3=c(0,1),Diagnosis_7=c(0,1),Diagnosis_2=c(0,1),Cover1=c(20,75),
                       Cover2=c(20,75),Cover3=c(20,75),Occupation_3=c(0,1),Occupation_5=c(1,0),Occupation_8=c(0,0),Occupation_2=c(0,0),
                       Occupation_11=c(0,0),Occupation_6=c(0,0),Occupation_4=c(0,0),Rheum_delay=c(110,25),Nutri_sup=c(0,1),
                       Des_sup_4=c(0,1), Des_sup_5=c(0,1),Des_sup_3=c(0,1),Des_sup_2=c(0,1),Des_sup_6=c(0,1),Des_sup_1=c(0,1),
                       DE5=c(0,1),DE1=c(0,1),DE4=c(0,1),DE3=c(0,1),DE6=c(0,1),DE2=c(0,1),NT5=c(0,1),NT11=c(0,1),NT7=c(0,1),
                       NT3=c(0,1),NT10=c(0,1),NT12=c(0,1),NT4=c(0,1),NT2=c(0,1),NT1=c(0,1),Education=c(4,1),EP15=c(0,1),
                       EP19=c(0,1),EP12=c(0,1),EP11=c(0,1),EP5=c(0,1),EP14=c(0,1),EP1=c(0,1),EP13=c(0,1),EP9=c(0,1),EP17=c(0,1),
                       EP16=c(0,1),EP21=c(0,1),EP4=c(0,1),EP18=c(0,1),EP2=c(0,1),EP20=c(0,1),EP3=c(0,1),EP6=c(0,1),EP10=c(0,1),
                       EPP15=c(0,1),EPP19=c(0,1),EPP8=c(0,1),EPP12=c(0,1),EPP11=c(0,1),EPP5=c(0,1),EPP14=c(0,1),EPP1=c(0,1),
                       EPP13=c(0,1),EPP9=c(0,1),EPP17=c(0,1),EPP16=c(0,1),EPP21=c(0,1),EPP4=c(0,1),EPP18=c(0,1),EPP2=c(0,1),
                       EPP7=c(0,1),EPP20=c(0,1),EPP3=c(0,1),EPP6=c(0,1),EPP10=c(0,1),EPPP15=c(0,1),EPPP19=c(0,1),EPPP8=c(0,1),
                       EPPP12=c(0,1),EPPP11=c(0,1),EPPP5=c(0,1),EPPP14=c(0,1),EPPP1=c(0,1),EPPP13=c(0,1),EPPP9=c(0,1),
                       EPPP17=c(0,1),EPPP16=c(0,1),EPPP21=c(0,1),EPPP4=c(0,1),EPPP18=c(0,1),EPPP2=c(0,1),EPPP7=c(0,1),EPPP20=c(0,1),
                       EPPP6=c(0,1),EPPP10=c(0,1),Employment_status_10=c(0,1),Employment_status_6=c(1,0),Employment_status_12=c(0,0),
                       Employment_status_5=c(0,0),Employment_status_9=c(0,0),Federal_state_1=c(0,1),Federal_state_2=c(1,0),
                       Federal_state_3=c(0,0),Federal_state_7=c(0,0),Federal_state_9=c(0,0),Federal_state_10=c(0,0),
                       Federal_state_11=c(0,0),Federal_state_15=c(0,0),First_consult_1=c(0,1),First_consult_5=c(0,1),
                       First_consult_3=c(0,1),First_consult_2=c(0,1),FS4=c(0,1),FS1=c(0,1),FS14=c(0,1),FS5=c(0,1),FS9=c(0,1),
                       FS10=c(0,1),FS2=c(0,1),FS16=c(0,1),FS6=c(0,1),FS15=c(0,1),FS11=c(0,1),FS12=c(0,1),FS3=c(0,1),FS7=c(0,1),
                       Doc_freq1=c(10,25),Doc_freq2=c(10,25),Doc_freq3=c(10,25),Health_insurance_2=c(0,1),Health_insurance_1=c(0,1),
                       Income=c(1,4),Household=c(1,4),Covid=c(1,4),Day1=c(10,25),Day2=c(10,25),Day3=c(10,25),Info1=c(10,25),
                       Info2=c(10,25),Info3=c(10,25),Lone_after=c(1,4),Lone_before=c(1,4),N_rheum=c(1,4),N_spe=c(1,4),
                       Nutrition=c(0,1),Nutri_advice=c(0,1),Journey=c(1,4),Physiotherapy=c(0,1),Place=c(1,4),Psy_sup1=c(10,25),
                       Psy_sup2=c(10,25),Psy_sup3=c(10,25),Self_conf1=c(10,25),Self_conf2=c(10,25),Self_conf3=c(10,25),
                       Self_after=c(1,4),Self_before=c(1,4),SE10=c(0,1),SE13=c(0,1),SE6=c(0,1),SE11=c(0,1),SE3=c(0,1),
                       SE5=c(0,1),Self_explanation=c(0,1),Gender=c(0,1),Social_after=c(1,4),Social_before=c(1,4),
                       Symptom_onset=c(10,25),Doc_trust1=c(10,25),Doc_trust2=c(10,25),Doc_trust3=c(10,25),PT_type_6=c(0,1),
                       PT_type_3=c(0,1),PT_type_2=c(0,1),PT_type_4=c(0,1),PT_type_8=c(0,1),PT_type_1=c(0,1),PT_type_5=c(0,1),
                       Wait_time=c(150,21))

new_data<-new_data %>% select(loaded_model$feature_names)

#########################################
## Patient journey (3-level ordinal class: poor/problematic, okay, good/excellent)
#########################################

# Package loading
library(tidyverse)

#---------------------------------------------------------
## 1. Loading the saved model
loaded_model <- readRDS("Total illness duration_XGBoost_model.rds")

#---------------------------------------------------------
## 2. Preparing new data for prediction

# Replace this with your own new / unseen data
new_data <- data.frame(Age=c(20,45),Diagnosis_1=c(0,1),Diagnosis_3=c(0,1),Diagnosis_7=c(0,1),Diagnosis_2=c(0,1),Cover1=c(20,75),
                       Cover2=c(20,75),Cover3=c(20,75),Occupation_3=c(0,1),Occupation_5=c(1,0),Occupation_8=c(0,0),Occupation_2=c(0,0),
                       Occupation_11=c(0,0),Occupation_6=c(0,0),Occupation_4=c(0,0),Rheum_delay=c(110,25),Nutri_sup=c(0,1),
                       Des_sup_4=c(0,1), Des_sup_5=c(0,1),Des_sup_3=c(0,1),Des_sup_2=c(0,1),Des_sup_6=c(0,1),Des_sup_1=c(0,1),
                       DE5=c(0,1),DE1=c(0,1),DE4=c(0,1),DE3=c(0,1),DE6=c(0,1),DE2=c(0,1),NT5=c(0,1),NT11=c(0,1),NT7=c(0,1),
                       NT3=c(0,1),NT10=c(0,1),NT12=c(0,1),NT4=c(0,1),NT2=c(0,1),NT1=c(0,1),Education=c(4,1),EP15=c(0,1),
                       EP19=c(0,1),EP12=c(0,1),EP11=c(0,1),EP5=c(0,1),EP14=c(0,1),EP1=c(0,1),EP13=c(0,1),EP9=c(0,1),EP17=c(0,1),
                       EP16=c(0,1),EP21=c(0,1),EP4=c(0,1),EP18=c(0,1),EP2=c(0,1),EP20=c(0,1),EP3=c(0,1),EP6=c(0,1),EP10=c(0,1),
                       EPP15=c(0,1),EPP19=c(0,1),EPP8=c(0,1),EPP12=c(0,1),EPP11=c(0,1),EPP5=c(0,1),EPP14=c(0,1),EPP1=c(0,1),
                       EPP13=c(0,1),EPP9=c(0,1),EPP17=c(0,1),EPP16=c(0,1),EPP21=c(0,1),EPP4=c(0,1),EPP18=c(0,1),EPP2=c(0,1),
                       EPP7=c(0,1),EPP20=c(0,1),EPP3=c(0,1),EPP6=c(0,1),EPP10=c(0,1),EPPP15=c(0,1),EPPP19=c(0,1),EPPP8=c(0,1),
                       EPPP12=c(0,1),EPPP11=c(0,1),EPPP5=c(0,1),EPPP14=c(0,1),EPPP1=c(0,1),EPPP13=c(0,1),EPPP9=c(0,1),
                       EPPP17=c(0,1),EPPP16=c(0,1),EPPP21=c(0,1),EPPP4=c(0,1),EPPP18=c(0,1),EPPP2=c(0,1),EPPP7=c(0,1),EPPP20=c(0,1),
                       EPPP6=c(0,1),EPPP10=c(0,1),Employment_status_10=c(0,1),Employment_status_6=c(1,0),Employment_status_12=c(0,0),
                       Employment_status_5=c(0,0),Employment_status_9=c(0,0),Federal_state_1=c(0,1),Federal_state_2=c(1,0),
                       Federal_state_3=c(0,0),Federal_state_7=c(0,0),Federal_state_9=c(0,0),Federal_state_10=c(0,0),
                       Federal_state_11=c(0,0),Federal_state_15=c(0,0),First_consult_1=c(0,1),First_consult_5=c(0,1),
                       First_consult_3=c(0,1),First_consult_2=c(0,1),FS4=c(0,1),FS1=c(0,1),FS14=c(0,1),FS5=c(0,1),FS9=c(0,1),
                       FS10=c(0,1),FS2=c(0,1),FS16=c(0,1),FS6=c(0,1),FS15=c(0,1),FS11=c(0,1),FS12=c(0,1),FS3=c(0,1),FS7=c(0,1),
                       Doc_freq1=c(10,25),Doc_freq2=c(10,25),Doc_freq3=c(10,25),Health_insurance_2=c(0,1),Health_insurance_1=c(0,1),
                       Income=c(1,4),Household=c(1,4),Covid=c(1,4),Day1=c(10,25),Day2=c(10,25),Day3=c(10,25),Info1=c(10,25),
                       Info2=c(10,25),Info3=c(10,25),Lone_after=c(1,4),Lone_before=c(1,4),N_rheum=c(1,4),N_spe=c(1,4),
                       Nutrition=c(0,1),Nutri_advice=c(0,1),Outcome=c(1250,450),Physiotherapy=c(0,1),Place=c(1,4),Psy_sup1=c(10,25),
                       Psy_sup2=c(10,25),Psy_sup3=c(10,25),Self_conf1=c(10,25),Self_conf2=c(10,25),Self_conf3=c(10,25),
                       Self_after=c(1,4),Self_before=c(1,4),SE10=c(0,1),SE13=c(0,1),SE6=c(0,1),SE11=c(0,1),SE3=c(0,1),
                       SE5=c(0,1),Self_explanation=c(0,1),Gender=c(0,1),Social_after=c(1,4),Social_before=c(1,4),
                       Symptom_onset=c(10,25),Doc_trust1=c(10,25),Doc_trust2=c(10,25),Doc_trust3=c(10,25),PT_type_6=c(0,1),
                       PT_type_3=c(0,1),PT_type_2=c(0,1),PT_type_4=c(0,1),PT_type_8=c(0,1),PT_type_1=c(0,1),PT_type_5=c(0,1),
                       Wait_time=c(150,21))

new_data<-new_data %>% select(loaded_model$feature_names)

#---------------------------------------------------------
## 3. Making predictions 
predictions <- predict(loaded_model, newdata = as.matrix(new_data))
as_tibble(data.frame(ID=rep(1:nrow(new_data), each = 3),
                     Most_likely_patient_journey_class=rep(1:3,length(predictions)/3),
                     probability=predictions)) %>%
  group_by(ID) %>%
  filter(probability==max(probability,na.rm=T)) %>%
  ungroup %>%
  mutate(Most_likely_patient_journey_class=case_when(Most_likely_patient_journey_class==1~"poor/problematic",
                                                     Most_likely_patient_journey_class==2~"okay",
                                                     T~"good/excellent"))
