##this is the first script to run.
## make sure the working directory is set up

options(scipen = 999)
if (!require("data.table")) install.packages('data.table')
if (!require("dplyr")) install.packages('dplyr')
if (!require("rstanarm")) install.packages('rstanarm')
library(tidyr);library(dplyr)

source("READ.R")

#there are such a few number of cold&warm cases. Assigning them to cold.
# dat$climate_clusters <- ifelse(dat$climate_clusters == "cold&warm", "cold",dat$climate_clusters)
source("models.R")
source("bayGLM.R")


##things to do:

#1-run models for each year and compare the best model in each year -- don't separate by climate
source("bayes87.R")
source("bayes90.R")
source("bayes05.R")
source("bayes09.R")

#Comparing the 8 contending models, using  an approximation to Leave-One-Out (LOO) cross-validation, 
# which is implemented by the loo function in the loo package:
(comp.87 <- compare_models(loot1.87,loot3.87,loot5.87,loot7.87,
                           loot2.87,loot4.87,loot6.87,loot8.87))
comp.87.DF <- as.data.frame(comp.87)
comp.87.DF$year <- "1987"
(comp.90 <- compare_models(loot1.90,loot3.90,loot5.90,loot7.90,
                           loot2.90,loot4.90,loot6.90,loot8.90))
comp.90.DF <- as.data.frame(comp.90)
comp.90.DF$year <- "1990"
#in 1990, model 8 wa still the best
(comp.05 <- compare_models(loot1.05,loot3.05,loot5.05,loot7.05,
                           loot2.05,loot4.05,loot6.05,loot8.05))
comp.05.DF <- as.data.frame(comp.05)
comp.05.DF$year <- "2005"
(comp.09 <- compare_models(loot1.09,loot3.09,loot5.09,loot7.09,
                           loot2.09,loot4.09,loot6.09,loot8.09))
comp.09.DF <- as.data.frame(comp.09)
comp.09.DF$year <- "2009"

comps <- rbind(comp.05.DF,comp.09.DF,comp.87.DF,comp.90.DF)
rm(comp.05.DF,comp.09.DF,comp.87.DF,comp.90.DF)
# for all years, the 8th model was the preferred as it had the highest expected log predicted density (elpd) or,
# equivalently, the lowest value of the LOO Information Criterion (looic). 
# The 8th model is preferred by a lot over the first model

## also, model 3 was almost better than models 1-5 (except in 1987), but the improvement from model 3 to model 6 was very significatn!

# binding non-climate-based modeling results
noclim_res87 <- rbind(mod2.87,mod3.87,mod6.87,mod7.87,mod8.87)
noclim_res87$ID2 <- paste0(noclim_res87$ID,".",noclim_res87$model)

noclim_res90 <- rbind(mod2.90,mod3.90,mod6.90,mod7.90,mod8.90)
noclim_res90$ID2 <- paste0(noclim_res90$ID,".",noclim_res90$model)

noclim_res05 <- rbind(mod2.05,mod3.05,mod6.05,mod7.05,mod8.05)
noclim_res05$ID2 <- paste0(noclim_res05$ID,".",noclim_res05$model)

noclim_res09 <- rbind(mod2.09,mod3.09,mod6.09,mod7.09,mod8.09)
noclim_res09$ID2 <- paste0(noclim_res09$ID,".",noclim_res09$model)


##all non-climate results together
noclim_res <- rbind(noclim_res87,noclim_res90,noclim_res05,noclim_res09)

#2-compare the coefficients for the interesting models in each year by climate clusters

source("selected_models_GLM.R")


#binding them together
res87 <- rbind(res87cold.8,res87warm.8,res87mild.8,
               res87cold.7,res87warm.7,res87mild.7,
               res87cold.6,res87warm.6,res87mild.6,
               res87cold.3,res87warm.3,res87mild.3,
               res87cold.2,res87warm.2,res87mild.2)
res87$ID2 <- paste0(res87$ID,".",res87$climate)
res90 <- rbind(res90cold.8,res90warm.8,res90mild.8,
               res90cold.7,res90warm.7,res90mild.7,
               res90cold.6,res90warm.6,res90mild.6,
               res90cold.3,res90warm.3,res90mild.3,
               res90cold.2,res90warm.2,res90mild.2)
res90$ID2 <- paste0(res90$ID,".",res90$climate)
res05 <- rbind(res05cold.8,res05warm.8,res05mild.8,
               res05cold.7,res05warm.7,res05mild.7,
               res05cold.6,res05warm.6,res05mild.6,
               res05cold.3,res05warm.3,res05mild.3,
               res05cold.2,res05warm.2,res05mild.2)
res05$ID2 <- paste0(res05$ID,".",res05$climate)
res09 <- rbind(res09cold.8,res09warm.8,res09mild.8,
               res09cold.7,res09warm.7,res09mild.7,
               res09cold.6,res09warm.6,res09mild.6,
               res09cold.3,res09warm.3,res09mild.3,
               res09cold.2,res09warm.2,res09mild.2)
res09$ID2 <- paste0(res09$ID,".",res09$climate)


##all results together
res <- rbind(res87,res90,res05,res09)



# pseudo cohort analysis
# constructing the pseudo cohort
source("pseudo_cohort_GLM.R")

##result, GEN_Y dataset, that only includes data from the pseudo cohorts
#we further limit GEN_Y to only include data from models 2, 3, 6, 7, 8



##saving results for visualization and psuedo cohort
save.image("modelingresults.RData")

