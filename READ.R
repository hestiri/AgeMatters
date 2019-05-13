# install.packages(dplyr)
if (!require("data.table")) install.packages('data.table')
if (!require("dplyr")) install.packages('dplyr')
if (!require("ggplot2")) install.packages('ggplot2')
if (!require("factoextra")) install.packages('factoextra')




## processing 1987 data

d87c <- read.table("Data/87/87CONSUMP.txt", header = T, sep=",",quote = "",fill = TRUE) # consumption
d87d <- read.table("Data/87/87DEMOGRAPbod.txt", header = F, sep="\t",quote = "",fill = TRUE) #demographic 
d87head <- read.table("Data/87/87DEMOGRAP.txt", header = T, sep=",",quote = "",fill = TRUE) #demographic 
names(d87d) <- names(d87head)
drops <- c("NWEIGHT", "REGIONC", "DIVISION", "NWEIGHT", "REGIONC", "DIVISION")
d87d <- d87d[,!(names(d87d) %in% drops)]
d87e <- read.table("Data/87/ENANDEQU.txt", header = T, sep=",",quote = "",fill = TRUE) #equipments
d87e <- d87e[,!(names(d87e) %in% drops)]

d87s <- read.table("Data/87/87STRUCTUR.txt", header = T, sep=",",quote = "",fill = TRUE) # structure of home
d87s <- d87s[,!(names(d87s) %in% drops)]


d87 <- merge(d87c,d87d, by = "HHID" )
d87 <- merge(d87, d87s, by = "HHID")
d87 <- merge(d87, d87e, by = "HHID")
rm(d87head,d87s,d87e,d87d,d87c)
names(d87)

d87 <- d87 %>%
  select(HHID,REGIONC,DIVISION,YEARMADE,TYPEHU,HOMEAREA,CDD65,HDD65,HHSEX,HHAGE,
         YEARS02,YEARS03,YEARS04,YEARS05,YEARS06,YEARS07,YEARS08,YEARS09,YEARS10,YEARS11,
         YEARS12,NHSLDMEM,ONEYPY,NWEIGHT,BTUKER,BTUEL,BTUNG,BTUFO,BTUNG,BTULP,KOWNRENT)

d87 = subset(d87,d87$KOWNRENT==1)



        # BTUEL  = BTUELSPH + BTUELWTH + BTUELAPL + BTUELCOL + BTUELRFG
        # BTUNG  = BTUNGSPH + BTUNGWTH + BTUNGAPL + BTUNGCOL
        # BTUFO  = BTUFOSPH + BTUFOWTH + BTUFOAPL
        # BTULP  = BTULPSPH + BTULPWTH + BTULPAPL
        # BTUKER = BTUKRSPH + BTUKRWTH + BTUKRAPL

## replacing 9999999 and 99 with 0
ll <- length(d87)
for (i in 1:ll) {
  col <- names(d87[i])
  d87[,col] <- ifelse(d87[,col] == 9999999, 0,d87[,col])
  d87[,col] <- ifelse(d87[,col] == 99, 0,d87[,col])
  
}

#calculating total energy use
d87$BTUTOT <- d87$BTUKER+d87$BTUEL+d87$BTUFO+d87$BTUNG+d87$BTULP
#changing the thousands BTU to millions BTU
d87$BTUTOT = (d87$BTUTOT)/1000

d87$MONEYPY <- d87$ONEYPY

##Create count columns
d87$age05 <- rowSums(d87[,10:21]<5 & d87[,10:21]>0) #<5 years olds
d87$age05to09 <- rowSums(d87[,10:21]>4 & d87[,10:21]<10) #5-9 years olds
d87$age10to14 <- rowSums(d87[,10:21]>9 & d87[,10:21]<15) #10-14 years olds
d87$age15to19 <- rowSums(d87[,10:21]>14 & d87[,10:21]<20) #15-19 years olds
d87$age20to24 <- rowSums(d87[,10:21]>19 & d87[,10:21]<25) #20-24 years olds
d87$age25to29 <- rowSums(d87[,10:21]>24 & d87[,10:21]<30) #25-29 years olds
d87$age30to34 <- rowSums(d87[,10:21]>29 & d87[,10:21]<35) #30-34 years olds
d87$age35to39 <- rowSums(d87[,10:21]>34 & d87[,10:21]<40) #35-39 years olds
d87$age40to44 <- rowSums(d87[,10:21]>39 & d87[,10:21]<45) #40-44 years olds
d87$age45to49 <- rowSums(d87[,10:21]>44 & d87[,10:21]<50) #45-49 years olds
d87$age50to54 <- rowSums(d87[,10:21]>49 & d87[,10:21]<55) #50-54 years olds
d87$age55to59 <- rowSums(d87[,10:21]>54 & d87[,10:21]<60) #55-59 years olds
d87$age60to64 <- rowSums(d87[,10:21]>59 & d87[,10:21]<65) #60-64 years olds
d87$age65to69 <- rowSums(d87[,10:21]>64 & d87[,10:21]<70) #65-69 years olds
d87$age70to74 <- rowSums(d87[,10:21]>69 & d87[,10:21]<75) #70-74 years olds
d87$age75to79 <- rowSums(d87[,10:21]>74 & d87[,10:21]<80) #75-79 years olds
d87$age80p <- rowSums(d87[,10:21]>79)   #>80 years olds


## creating 10-year housing age categories
d87$YEARMADE10 <- 0

d87$YEARMADE10 <- ifelse(d87$YEARMADE == 1, 06, d87$YEARMADE10) #more than 50
d87$YEARMADE10 <- ifelse(d87$YEARMADE == 2, 05, d87$YEARMADE10) #more than 50
d87$YEARMADE10 <- ifelse(d87$YEARMADE == 3, 04, d87$YEARMADE10) #more than 50
d87$YEARMADE10 <- ifelse(d87$YEARMADE == 4, 03, d87$YEARMADE10) #more than 50
d87$YEARMADE10 <- ifelse(d87$YEARMADE == 5 | d87$YEARMADE == 6, 02, d87$YEARMADE10) #more than 50
d87$YEARMADE10 <- ifelse(d87$YEARMADE > 6, 01, d87$YEARMADE10) #more than 50

## harmonizing income groups with 10k groups, inc10
d87$inc10 <- 0
d87$inc10 <- ifelse(d87$MONEYPY < 8, 1, d87$inc10) # less than 10k
d87$inc10 <- ifelse(d87$MONEYPY < 16 & d87$MONEYPY > 8, 2, d87$inc10) # 10-20
d87$inc10 <- ifelse(d87$MONEYPY < 20 & d87$MONEYPY > 15, 3, d87$inc10) # 20-30
d87$inc10 <- ifelse(d87$MONEYPY < 23 & d87$MONEYPY > 19, 4, d87$inc10) # 30-40
d87$inc10 <- ifelse(d87$MONEYPY == 23, 5, d87$inc10) # 40-50
d87$inc10 <- ifelse(d87$MONEYPY == 24, 6, d87$inc10) # 50-75
d87$inc10 <- ifelse(d87$MONEYPY == 25, 7, d87$inc10) # >75


d87$TYPEHUQ <- d87$TYPEHU
d87$YEAR <- 1987

#harmonizing data model for join
d87 <- d87 %>%
  select(HHID,REGIONC,DIVISION,YEAR,YEARMADE10,TYPEHUQ,HOMEAREA,CDD65,HDD65,HHSEX,NHSLDMEM,inc10,MONEYPY,NWEIGHT,BTUKER,BTUEL,BTUNG,BTUFO,BTULP,BTUTOT,
         age05,age05to09,age10to14,age15to19,age20to24,age25to29,age30to34,age35to39,age40to44,age45to49,age50to54,age55to59,age60to64,age65to69,age70to74,age75to79,age80p
  )

d87$HOMEAREA.percap = d87$HOMEAREA/d87$NHSLDMEM
d87$HOMEAREA.percap = sqrt(d87$HOMEAREA.percap)


#####
####
####
####

# processing 1990 data

d901 <- read.table("Data/90/90File1_structure_data.txt", header = T, sep=",",quote = "",fill = TRUE) # general + TYPEHUQ and YEARMADE
d909 <- read.table("Data/90/90File9_demograp_data.txt", header = T, sep=",",quote = "",fill = TRUE) #demographic 
drops <- c("NWEIGHT", "REGIONC", "DIVISION", "NWEIGHT","TYPEHUQ","CDD65","HDD65","YEARMADE","HEATED","TYPEHOME")
d909 <- d909[,!(names(d909) %in% drops)]
d9012 <- read.table("Data/90/90File12_conelng_data.txt", header = T, sep=",",quote = "",fill = TRUE) #energy data
drops1 <- c("MONEYPY","AREA1980","NWEIGHT", "REGIONC", "DIVISION", "NWEIGHT","TYPEHOME","HEATED","YEARMADE","FUELH2O","COOLMAIN","COOLUNIT","FUELFOOD","FUELHEAT","EQUIPM")

d9014 <- read.table("Data/90/90File14_conoth_data.txt", header = T, sep=",",quote = "",fill = TRUE) #energy data
drops2 <- c("MONEYPY","AREA1980","NWEIGHT", "REGIONC", "DIVISION", "NWEIGHT","TYPEHOME","HEATED","YEARMADE")
d9014 <- d9014[,!(names(d9014) %in% drops2)]
d9012 <- d9012[,!(names(d9012) %in% drops1)]




d90 <- merge(d901,d909, by = "HHID" )
d90 <- merge(d90, d9014, by = "HHID")
d90 <- merge(d90, d9012, by = "HHID")

rm(d901,d9012,d909,d9014)
names(d90)

d90 <- d90 %>%
  select(HHID,NWEIGHT,REGIONC,DIVISION,TYPEHUQ,YEARMADE,HOMEAREA,HHSEX,HHAGE,YEARS02,
         YEARS03,YEARS04,YEARS05,YEARS06,YEARS07,YEARS08,YEARS09,
         YEARS10,YEARS11,YEARS12,NHSLDMEM,MONEYPY,CDD65,HDD65,BTUKER,BTUEL,BTUNG,BTUFO,BTUNG,BTULP,KOWNRENT)

d90 = subset(d90,d90$KOWNRENT==1)

## replacing 9999999 and 99 with 0
ll2 <- length(d90)
for (i in 1:ll2) {
  col <- names(d90[i])
  d90[,col] <- ifelse(d90[,col] == 9999999, 0,d90[,col])
  d90[,col] <- ifelse(d90[,col] == 99, 0,d90[,col])
  
}

#calculating total energy use
d90$BTUTOT <- d90$BTUKER+d90$BTUEL+d90$BTUFO+d90$BTUNG+d90$BTULP
d90 <- subset(d90, d90$HHID != 1)
#changing the thousands BTU to millions BTU
d90$BTUTOT = (d90$BTUTOT)/1000

##Create count columns
d90$age05 <- rowSums(d90[,8:19]<5 & d90[,8:19] > 0) #<5 years olds
d90$age05to09 <- rowSums(d90[,8:19]>4 & d90[,8:19]<10) #5-9 years olds
d90$age10to14 <- rowSums(d90[,8:19]>9 & d90[,8:19]<15) #10-14 years olds
d90$age15to19 <- rowSums(d90[,8:19]>14 & d90[,8:19]<20) #15-19 years olds
d90$age20to24 <- rowSums(d90[,8:19]>19 & d90[,8:19]<25) #20-24 years olds
d90$age25to29 <- rowSums(d90[,8:19]>24 & d90[,8:19]<30) #25-29 years olds
d90$age30to34 <- rowSums(d90[,8:19]>29 & d90[,8:19]<35) #30-34 years olds
d90$age35to39 <- rowSums(d90[,8:19]>34 & d90[,8:19]<40) #35-39 years olds
d90$age40to44 <- rowSums(d90[,8:19]>39 & d90[,8:19]<45) #40-44 years olds
d90$age45to49 <- rowSums(d90[,8:19]>44 & d90[,8:19]<50) #45-49 years olds
d90$age50to54 <- rowSums(d90[,8:19]>49 & d90[,8:19]<55) #50-54 years olds
d90$age55to59 <- rowSums(d90[,8:19]>54 & d90[,8:19]<60) #55-59 years olds
d90$age60to64 <- rowSums(d90[,8:19]>59 & d90[,8:19]<65) #60-64 years olds
d90$age65to69 <- rowSums(d90[,8:19]>64 & d90[,8:19]<70) #65-69 years olds
d90$age70to74 <- rowSums(d90[,8:19]>69 & d90[,8:19]<75) #70-74 years olds
d90$age75to79 <- rowSums(d90[,8:19]>74 & d90[,8:19]<80) #75-79 years olds
d90$age80p <- rowSums(d90[,8:19]>79) #>80 years olds


## creating 10-year housing age categories
d90$YEARMADE10 <- 0

d90$YEARMADE10 <- ifelse(d90$YEARMADE == 1, 06, d90$YEARMADE10) #more than 50
d90$YEARMADE10 <- ifelse(d90$YEARMADE == 2, 05, d90$YEARMADE10) #more than 50
d90$YEARMADE10 <- ifelse(d90$YEARMADE == 3, 04, d90$YEARMADE10) #more than 50
d90$YEARMADE10 <- ifelse(d90$YEARMADE == 4, 03, d90$YEARMADE10) #more than 50
d90$YEARMADE10 <- ifelse(d90$YEARMADE == 5, 02, d90$YEARMADE10) #more than 50
d90$YEARMADE10 <- ifelse(d90$YEARMADE > 5, 01, d90$YEARMADE10) #more than 50



## harmonizing income variabile with 10k groups

d90$inc10 <- 0
d90$inc10 <- ifelse(d90$MONEYPY < 9, 1, d90$inc10) # less than 10k
d90$inc10 <- ifelse(d90$MONEYPY < 16 & d90$MONEYPY > 8, 2, d90$inc10) # 10-20
d90$inc10 <- ifelse(d90$MONEYPY < 20 & d90$MONEYPY > 15, 3, d90$inc10) # 20-30
d90$inc10 <- ifelse(d90$MONEYPY < 23 & d90$MONEYPY > 19, 4, d90$inc10) # 30-40
d90$inc10 <- ifelse(d90$MONEYPY == 23, 5, d90$inc10) # 40-50
d90$inc10 <- ifelse(d90$MONEYPY == 24, 6, d90$inc10) # 50-75
d90$inc10 <- ifelse(d90$MONEYPY == 25, 7, d90$inc10) # >75

d90$YEAR <- 1990

#harmonizing data model for join
d90 <- d90 %>%
  select(HHID,REGIONC,DIVISION,YEAR,YEARMADE10,TYPEHUQ,HOMEAREA,CDD65,HDD65,HHSEX,NHSLDMEM,inc10,MONEYPY,NWEIGHT,BTUKER,BTUEL,BTUNG,BTUFO,BTULP,BTUTOT,
         age05,age05to09,age10to14,age15to19,age20to24,age25to29,age30to34,age35to39,age40to44,age45to49,age50to54,age55to59,age60to64,age65to69,age70to74,age75to79,age80p
  )
d90$HOMEAREA.percap = d90$HOMEAREA/d90$NHSLDMEM
d90$HOMEAREA.percap = sqrt(d90$HOMEAREA.percap)

#####
###
##
####

#### processing 2009 data

d09 <- read.table("Data/09/09_public.csv", header=T, sep=',')

## Trim to necessary fields

necFields <- c("DOEID",                              #id variable
               "HDD65","CDD65",#"HDD30YR", "CDD30YR", #these are local climate variables
               "DIVISION","REGIONC",                 #census divisions and regions
               "HHAGE", "HHSEX",                             #age of householder
               "AGEHHMEMCAT2", "AGEHHMEMCAT3","AGEHHMEMCAT4","AGEHHMEMCAT5","AGEHHMEMCAT6",
               "AGEHHMEMCAT7","AGEHHMEMCAT8","AGEHHMEMCAT9","AGEHHMEMCAT10","AGEHHMEMCAT11",
               "AGEHHMEMCAT12","AGEHHMEMCAT13","AGEHHMEMCAT14", #age of householder members 2-14 (categorical)
               "NWEIGHT",                            #weight variable
               "TOTALBTU","BTUKER","BTUEL","BTUNG","BTUFO","BTULP",#"TOTALDOL",                #total energy consumption and total energy sqrtenditure
               "YEARMADE","TYPEHUQ",                 #year the building was built and building type
               #"EDUCATION",                          #highest education of householder
               "NHSLDMEM",                           #household size
               "KOWNRENT",
               "MONEYPY",                           #income
               "TOTSQFT")                            #house size

d09 <- d09[ ,necFields]
d09$HOMEAREA <- d09$TOTSQFT
d09$BTUTOT2 <- d09$TOTALBTU
#calculating total energy use
d09$BTUTOT <- d09$BTUKER+d09$BTUEL+d09$BTUFO+d09$BTUNG+d09$BTULP
d09 = subset(d09,d09$KOWNRENT==1)
#changing the thousands BTU to millions BTU
d09$BTUTOT = (d09$BTUTOT)/1000

### Constructing 10-year housing age groups
d09$YEARMADE10 <- d09$YEARMADE

d09$YEARMADE10 <- ifelse(d09$YEARMADE10 < 1960, 06, d09$YEARMADE10) #more than 50
d09$YEARMADE10 <- ifelse(d09$YEARMADE10 > 1959 & d09$YEARMADE10 < 1970, 05, d09$YEARMADE10) #40-50
d09$YEARMADE10 <- ifelse(d09$YEARMADE10 > 1969 & d09$YEARMADE10 < 1980, 04, d09$YEARMADE10) #30-40
d09$YEARMADE10 <- ifelse(d09$YEARMADE10 > 1979 & d09$YEARMADE10 < 1990, 03, d09$YEARMADE10) #20-30
d09$YEARMADE10 <- ifelse(d09$YEARMADE10 > 1989 & d09$YEARMADE10 < 2000, 02, d09$YEARMADE10) #10-20
d09$YEARMADE10 <- ifelse(d09$YEARMADE10 > 1999, 01, d09$YEARMADE10) #less than 10 years old buildings

## transforming hhage variable into categorical (just like other household members)

d09$HHAGE <- ifelse(d09$HHAGE > 15 & d09$HHAGE < 20, 4,d09$HHAGE )
d09$HHAGE <- ifelse(d09$HHAGE > 19 & d09$HHAGE < 25, 5,d09$HHAGE )
d09$HHAGE <- ifelse(d09$HHAGE > 24 & d09$HHAGE < 30, 6,d09$HHAGE )
d09$HHAGE <- ifelse(d09$HHAGE > 29 & d09$HHAGE < 35, 7,d09$HHAGE )
d09$HHAGE <- ifelse(d09$HHAGE > 34 & d09$HHAGE < 40, 8,d09$HHAGE )
d09$HHAGE <- ifelse(d09$HHAGE > 39 & d09$HHAGE < 45, 9,d09$HHAGE )
d09$HHAGE <- ifelse(d09$HHAGE > 44 & d09$HHAGE < 50, 10,d09$HHAGE )
d09$HHAGE <- ifelse(d09$HHAGE > 49 & d09$HHAGE < 55, 11,d09$HHAGE )
d09$HHAGE <- ifelse(d09$HHAGE > 54 & d09$HHAGE < 60, 12,d09$HHAGE )
d09$HHAGE <- ifelse(d09$HHAGE > 59 & d09$HHAGE < 65, 13,d09$HHAGE )
d09$HHAGE <- ifelse(d09$HHAGE > 64 & d09$HHAGE < 70, 14,d09$HHAGE )
d09$HHAGE <- ifelse(d09$HHAGE > 69 & d09$HHAGE < 75, 15,d09$HHAGE )
d09$HHAGE <- ifelse(d09$HHAGE > 74 & d09$HHAGE < 80, 16,d09$HHAGE )
d09$HHAGE <- ifelse(d09$HHAGE > 79, 17,d09$HHAGE )



##Create count columns

d09$age05 <- rowSums(d09[,8:21]==1) #<5 years olds
d09$age05to09 <- rowSums(d09[,8:21]==2) #5-9 years olds
d09$age10to14 <- rowSums(d09[,8:21]==3) #10-14 years olds
d09$age15to19 <- rowSums(d09[,8:21]==4) #15-19 years olds
d09$age20to24 <- rowSums(d09[,8:21]==5) #20-24 years olds
d09$age25to29 <- rowSums(d09[,8:21]==6) #25-29 years olds
d09$age30to34 <- rowSums(d09[,8:21]==7) #30-34 years olds
d09$age35to39 <- rowSums(d09[,8:21]==8) #35-39 years olds
d09$age40to44 <- rowSums(d09[,8:21]==9) #40-44 years olds
d09$age45to49 <- rowSums(d09[,8:21]==10) #45-49 years olds
d09$age50to54 <- rowSums(d09[,8:21]==11) #50-54 years olds
d09$age55to59 <- rowSums(d09[,8:21]==12) #55-59 years olds
d09$age60to64 <- rowSums(d09[,8:21]==13) #60-64 years olds
d09$age65to69 <- rowSums(d09[,8:21]==14) #65-69 years olds
d09$age70to74 <- rowSums(d09[,8:21]==15) #70-74 years olds
d09$age75to79 <- rowSums(d09[,8:21]==16) #75-79 years olds
d09$age80p <- rowSums(d09[,8:21]==17) #>80 years olds

##harmonizing income variable with 10k groups
d09$inc10 <- 0
d09$inc10 <- ifelse(d09$MONEYPY < 5, 1, d09$inc10) # less than 10k
d09$inc10 <- ifelse(d09$MONEYPY < 7 & d09$MONEYPY > 4, 2, d09$inc10) # 10-20
d09$inc10 <- ifelse(d09$MONEYPY < 9 & d09$MONEYPY > 6, 3, d09$inc10) # 20-30
d09$inc10 <- ifelse(d09$MONEYPY < 11 & d09$MONEYPY > 8, 4, d09$inc10) # 30-40
d09$inc10 <- ifelse(d09$MONEYPY < 13 & d09$MONEYPY > 10, 5, d09$inc10) # 40-50
d09$inc10 <- ifelse(d09$MONEYPY < 18 & d09$MONEYPY > 12, 6, d09$inc10) # 50-75
d09$inc10 <- ifelse(d09$MONEYPY > 17, 7, d09$inc10) # >75


d09$HHID <- d09$DOEID
d09$YEAR <- 2009
names(d09)
#harmonizing data model for join

d09 <- d09 %>%
  select(HHID,REGIONC,DIVISION,YEAR,YEARMADE10,TYPEHUQ,HOMEAREA,CDD65,HDD65,HHSEX,NHSLDMEM,inc10,MONEYPY,NWEIGHT,BTUKER,BTUEL,BTUNG,BTUFO,BTULP,BTUTOT,
         age05,age05to09,age10to14,age15to19,age20to24,age25to29,age30to34,age35to39,age40to44,age45to49,age50to54,age55to59,age60to64,age65to69,age70to74,age75to79,age80p
  )

d09$HOMEAREA.percap = d09$HOMEAREA/d09$NHSLDMEM
d09$HOMEAREA.percap = sqrt(d09$HOMEAREA.percap)




#### processing 2005 data

d05 <- read.table("Data/05/05data.csv", header=T, sep=',')
names(d05)
## Trim to necessary fields

necFields <- c("DOEID",                              #id variable
               "HD65","CD65",#"HDD30YR", "CDD30YR", #these are local climate variables
               "DIVISION","REGIONC",                 #census divisions and regions
               "HHSEX","HHAGE",                          #age of householder
               "AGEHHMEM2", "AGEHHMEM3","AGEHHMEM4","AGEHHMEM5","AGEHHMEM6",
               "AGEHHMEM7","AGEHHMEM8","AGEHHMEM9","AGEHHMEM10","AGEHHMEM11",
               "AGEHHMEM12", #age of householder members 2-12 (categorical)
               "NWEIGHT",                            #weight variable
               "BTUKER","BTUEL","BTUNG","BTUFO","BTULP",#"TOTALDOL",                #total energy consumption and total energy sqrtenditure
               "YEARMADE","TYPEHUQ",                 #year the building was built and building type
               #"EDUCATION",                          #highest education of householder
               "NHSLDMEM",                           #household size   
               "MONEYPY",                           #income
               "KOWNRENT",                          #rental or owner occupied=1 
               "TOTSQFT")                            #house size

d05 <- d05[ ,necFields]
d05$HDD65 <- d05$HD65
d05$CDD65 <- d05$CD65
d05$HOMEAREA <- d05$TOTSQFT
d05 = subset(d05,d05$KOWNRENT==1)



ll <- length(d05)
for (i in 1:ll) {
  col <- names(d05[i])
  d05[,col] <- ifelse(d05[,col] == 9999999, 0,d05[,col])
  d05[,col] <- ifelse(d05[,col] == 99, 0,d05[,col])
  
}

#calculating total energy use
d05$BTUTOT <- d05$BTUKER+d05$BTUEL+d05$BTUFO+d05$BTUNG+d05$BTULP
#changing the thousands BTU to millions BTU
d05$BTUTOT = (d05$BTUTOT)/1000




### Constructing 10-year housing age groups
d05$YEARMADE10 <- d05$YEARMADE

d05$YEARMADE10 <- ifelse(d05$YEARMADE10 < 03, 06, d05$YEARMADE10) #more than 50
d05$YEARMADE10 <- ifelse(d05$YEARMADE10 == 03, 05, d05$YEARMADE10) #40-50
d05$YEARMADE10 <- ifelse(d05$YEARMADE10 == 04, 04, d05$YEARMADE10) #30-40
d05$YEARMADE10 <- ifelse(d05$YEARMADE10 > 04 & d05$YEARMADE10 < 07, 03, d05$YEARMADE10) #20-30
d05$YEARMADE10 <- ifelse(d05$YEARMADE10 > 06 & d05$YEARMADE10 < 09, 02, d05$YEARMADE10) #10-20
d05$YEARMADE10 <- ifelse(d05$YEARMADE10 > 08, 01, d05$YEARMADE10) #less than 10 years old buildings



##Create count columns
d05$age05 <- rowSums(d05[,7:18]<5 & d05[,7:18] > 0) #<5 years olds
d05$age05to09 <- rowSums(d05[,7:18]>4 & d05[,7:18]<10) #5-9 years olds
d05$age10to14 <- rowSums(d05[,7:18]>9 & d05[,7:18]<15) #10-14 years olds
d05$age15to19 <- rowSums(d05[,7:18]>14 & d05[,7:18]<20) #15-19 years olds
d05$age20to24 <- rowSums(d05[,7:18]>19 & d05[,7:18]<25) #20-24 years olds
d05$age25to29 <- rowSums(d05[,7:18]>24 & d05[,7:18]<30) #25-29 years olds
d05$age30to34 <- rowSums(d05[,7:18]>29 & d05[,7:18]<35) #30-34 years olds
d05$age35to39 <- rowSums(d05[,7:18]>34 & d05[,7:18]<40) #35-39 years olds
d05$age40to44 <- rowSums(d05[,7:18]>39 & d05[,7:18]<45) #40-44 years olds
d05$age45to49 <- rowSums(d05[,7:18]>44 & d05[,7:18]<50) #45-49 years olds
d05$age50to54 <- rowSums(d05[,7:18]>49 & d05[,7:18]<55) #50-54 years olds
d05$age55to59 <- rowSums(d05[,7:18]>54 & d05[,7:18]<60) #55-59 years olds
d05$age60to64 <- rowSums(d05[,7:18]>59 & d05[,7:18]<65) #60-64 years olds
d05$age65to69 <- rowSums(d05[,7:18]>64 & d05[,7:18]<70) #65-69 years olds
d05$age70to74 <- rowSums(d05[,7:18]>69 & d05[,7:18]<75) #70-74 years olds
d05$age75to79 <- rowSums(d05[,7:18]>74 & d05[,7:18]<80) #75-79 years olds
d05$age80p <- rowSums(d05[,7:18]>79) #>80 years olds



##harmonizing income variable with 10k groups
d05$inc10 <- 0
d05$inc10 <- ifelse(d05$MONEYPY < 5, 1, d05$inc10) # less than 10k
d05$inc10 <- ifelse(d05$MONEYPY < 7 & d05$MONEYPY > 4, 2, d05$inc10) # 10-20
d05$inc10 <- ifelse(d05$MONEYPY < 9 & d05$MONEYPY > 6, 3, d05$inc10) # 20-30
d05$inc10 <- ifelse(d05$MONEYPY < 11 & d05$MONEYPY > 8, 4, d05$inc10) # 30-40
d05$inc10 <- ifelse(d05$MONEYPY < 13 & d05$MONEYPY > 10, 5, d05$inc10) # 40-50
d05$inc10 <- ifelse(d05$MONEYPY < 18 & d05$MONEYPY > 12, 6, d05$inc10) # 50-75
d05$inc10 <- ifelse(d05$MONEYPY > 17, 7, d05$inc10) # >75


d05$HHID <- d05$DOEID
d05$YEAR <- 2005
names(d05)
#harmonizing data model for join

d05 <- d05 %>%
  select(HHID,REGIONC,DIVISION,YEAR,YEARMADE10,TYPEHUQ,HOMEAREA,CDD65,HDD65,HHSEX,NHSLDMEM,inc10,MONEYPY,NWEIGHT,BTUKER,BTUEL,BTUNG,BTUFO,BTULP,BTUTOT,
         age05,age05to09,age10to14,age15to19,age20to24,age25to29,age30to34,age35to39,age40to44,age45to49,age50to54,age55to59,age60to64,age65to69,age70to74,age75to79,age80p
  )

d05$HOMEAREA.percap = d05$HOMEAREA/d05$NHSLDMEM
d05$HOMEAREA.percap = sqrt(d05$HOMEAREA.percap)



###########
##########
#########
########
#COMBINING THE FINAL DATA
dat <- rbind(d87,d90,d05,d09)

#changing the thousands BTU to millions BTU
dat$BTUTOT = (dat$BTUTOT)/1000

#transforming outcome variable to look more normaly distributed
dat$BTUTOT.sqrt = sqrt(dat$BTUTOT)

#using square root transformation for normalizing housing size 
# dat$LOGHOMEAREA = log10(dat$HOMEAREA)
dat$HOMEAREA.sqrt = sqrt(dat$HOMEAREA)


###clustering and labeling climate data into 3 regions of high HDD, high CDD, and moderate
lustplot <- function(data,n) {
  max.cdd<-max(data$CDD65)
  max.hdd <- max(data$HDD65)
  data$cluster1 <- hkmeans(data[,c("CDD65")],
                           k = n,
                           iter.max = 50,
                           km.algorithm = "MacQueen")$cluster
  data$cluster2 <- hkmeans(data[,c("HDD65")],
                           k = n,
                           iter.max = 50,
                           km.algorithm = "MacQueen")$cluster
  data$cluster <- paste0(data$cluster1,data$cluster2)
  clusterplot<- ggplot(data)+
    geom_point(aes(x=CDD65,y=HDD65,color=factor(cluster)), alpha=0.5)
  return(list("clusters"=data$cluster,
              "clusterplot"=clusterplot))
}

##clustering the aggregated data by climate
lustplot(dat,2)$clusterplot
dat$climate_clusters <- lustplot(dat,2)$clusters
ggplot(dat)+
  geom_point(aes(x=CDD65,y=HDD65,color=factor(climate_clusters)), alpha=0.5)
dat$climate_clusters <- ifelse(dat$climate_clusters == "12","mild",dat$climate_clusters)
dat$climate_clusters <- ifelse(dat$climate_clusters %in% c("11"),"cold",dat$climate_clusters)
dat$climate_clusters <- ifelse(dat$climate_clusters == "22","warm",dat$climate_clusters)
dat$climate_clusters <- ifelse(dat$climate_clusters == "21","cold&warm",dat$climate_clusters)



rm(list=setdiff(ls(), "dat"))

d05 <- subset(dat,dat$YEAR == "2005")
d09 <- subset(dat,dat$YEAR == "2009")
d90 <- subset(dat,dat$YEAR == "1990")
d87 <- subset(dat,dat$YEAR == "1987")
