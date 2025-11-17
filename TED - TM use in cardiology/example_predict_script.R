#---------------------------------------------------------
## 1. Loading the saved model
loaded_model <- readRDS("TED_xgb_model.rds")

#---------------------------------------------------------
## 2. Preparing new data for prediction

# Replace this with your own new / unseen data
new_data <- data.frame(TM_know=c(1,2),barrier_tech=c(0,1),internet_connect=c(0,1),impl_eff=c(0,1),remu=c(0,1),remu2=c(0,1),
                       secu=c(0,1),data=c(0,1),hypertension=c(0,1),heart=c(0,1),cardiac=c(0,1),event_monitor=c(0,1),
                       treatment=c(0,1),acute_event=c(0,1),weight=c(0,1),blood=c(0,1),ECG=c(0,1),handling=c(0,1),consult=c(0,1),
                       extension=c(0,1),acute_event2=c(0,1),weight2=c(0,1),blood2=c(0,1),ECG2=c(0,1),handling2=c(0,1),consult2=c(0,1),
                       extension2=c(0,1),assess_relev=c(1,2),assess_willing=c(2,1),TM_course=c(2,1),invest=c(0,1),TM_use_perso=c(0,1),
                       age=c(4,6),female=c(0,1),male=c(0,0),gen_med=c(0,1),int_med=c(0,0),cardio=c(1,0),prime_care=c(0,1),
                       location=c(3,1),nb_patient=c(100,21))

#---------------------------------------------------------
## 3. Making predictions 
predictions <- predict(loaded_model, newdata = as.matrix(new_data))
print(predictions)
print(if_else(predictions>0.5,"will use TM","Will not use TM"))
