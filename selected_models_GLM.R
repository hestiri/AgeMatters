##model 8
#87
#cold
run87cold.8 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="cold"),
                           year=1987,model=Model8,modelName="Model 8",iter=1000)
res87cold.8 <- as.data.frame(run87cold.8$results)
res87cold.8$climate <- "cold"
#warm
run87warm.8 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="warm"),
                           year=1987,model=Model8,modelName="Model 8",iter=1000)
res87warm.8 <- as.data.frame(run87warm.8$results)
res87warm.8$climate <- "warm"
#mild
run87mild.8 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="mild"),
                           year=1987,model=Model8,modelName="Model 8",iter=1000)
res87mild.8 <- as.data.frame(run87mild.8$results)
res87mild.8$climate <- "mild"
##90
#cold
run90cold.8 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="cold"),
                           year=1990,model=Model8,modelName="Model 8",iter=1000)
res90cold.8 <- as.data.frame(run90cold.8$results)
res90cold.8$climate <- "cold"
#warm
run90warm.8 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="warm"),
                           year=1990,model=Model8,modelName="Model 8",iter=1000)
res90warm.8 <- as.data.frame(run90warm.8$results)
res90warm.8$climate <- "warm"
#mild
run90mild.8 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="mild"),
                           year=1990,model=Model8,modelName="Model 8",iter=1000)
res90mild.8 <- as.data.frame(run90mild.8$results)
res90mild.8$climate <- "mild"
##05
#cold
run05cold.8 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="cold"),
                           year=2005,model=Model8,modelName="Model 8",iter=1000)
res05cold.8 <- as.data.frame(run05cold.8$results)
res05cold.8$climate <- "cold"
#warm
run05warm.8 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="warm"),
                           year=2005,model=Model8,modelName="Model 8",iter=1000)
res05warm.8 <- as.data.frame(run05warm.8$results)
res05warm.8$climate <- "warm"
#mild
run05mild.8 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="mild"),
                           year=2005,model=Model8,modelName="Model 8",iter=1000)
res05mild.8 <- as.data.frame(run05mild.8$results)
res05mild.8$climate <- "mild"
##09
#cold
run09cold.8 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="cold"),
                           year=2009,model=Model8,modelName="Model 8",iter=1000)
res09cold.8 <- as.data.frame(run09cold.8$results)
res09cold.8$climate <- "cold"
#warm
run09warm.8 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="warm"),
                           year=2009,model=Model8,modelName="Model 8",iter=1000)
res09warm.8 <- as.data.frame(run09warm.8$results)
res09warm.8$climate <- "warm"
#mild
run09mild.8 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="mild"),
                           year=2009,model=Model8,modelName="Model 8",iter=1000)
res09mild.8 <- as.data.frame(run09mild.8$results)
res09mild.8$climate <- "mild"

##model 7
#87
#cold
run87cold.7 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="cold"),
                           year=1987,model=Model7,modelName="Model 7",iter=1000)
res87cold.7 <- as.data.frame(run87cold.7$results)
res87cold.7$climate <- "cold"
#warm
run87warm.7 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="warm"),
                           year=1987,model=Model7,modelName="Model 7",iter=1000)
res87warm.7 <- as.data.frame(run87warm.7$results)
res87warm.7$climate <- "warm"
#mild
run87mild.7 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="mild"),
                           year=1987,model=Model7,modelName="Model 7",iter=1000)
res87mild.7 <- as.data.frame(run87mild.7$results)
res87mild.7$climate <- "mild"
##90
#cold
run90cold.7 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="cold"),
                           year=1990,model=Model7,modelName="Model 7",iter=1000)
res90cold.7 <- as.data.frame(run90cold.7$results)
res90cold.7$climate <- "cold"
#warm
run90warm.7 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="warm"),
                           year=1990,model=Model7,modelName="Model 7",iter=1000)
res90warm.7 <- as.data.frame(run90warm.7$results)
res90warm.7$climate <- "warm"
#mild
run90mild.7 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="mild"),
                           year=1990,model=Model7,modelName="Model 7",iter=1000)
res90mild.7 <- as.data.frame(run90mild.7$results)
res90mild.7$climate <- "mild"
##05
#cold
run05cold.7 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="cold"),
                           year=2005,model=Model7,modelName="Model 7",iter=1000)
res05cold.7 <- as.data.frame(run05cold.7$results)
res05cold.7$climate <- "cold"
#warm
run05warm.7 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="warm"),
                           year=2005,model=Model7,modelName="Model 7",iter=1000)
res05warm.7 <- as.data.frame(run05warm.7$results)
res05warm.7$climate <- "warm"
#mild
run05mild.7 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="mild"),
                           year=2005,model=Model7,modelName="Model 7",iter=1000)
res05mild.7 <- as.data.frame(run05mild.7$results)
res05mild.7$climate <- "mild"
##09
#cold
run09cold.7 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="cold"),
                           year=2009,model=Model7,modelName="Model 7",iter=1000)
res09cold.7 <- as.data.frame(run09cold.7$results)
res09cold.7$climate <- "cold"
#warm
run09warm.7 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="warm"),
                           year=2009,model=Model7,modelName="Model 7",iter=1000)
res09warm.7 <- as.data.frame(run09warm.7$results)
res09warm.7$climate <- "warm"
#mild
run09mild.7 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="mild"),
                           year=2009,model=Model7,modelName="Model 7",iter=1000)
res09mild.7 <- as.data.frame(run09mild.7$results)
res09mild.7$climate <- "mild"

##model 6
#87
#cold
run87cold.6 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="cold"),
                           year=1987,model=Model6,modelName="Model 6",iter=1000)
res87cold.6 <- as.data.frame(run87cold.6$results)
res87cold.6$climate <- "cold"
#warm
run87warm.6 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="warm"),
                           year=1987,model=Model6,modelName="Model 6",iter=1000)
res87warm.6 <- as.data.frame(run87warm.6$results)
res87warm.6$climate <- "warm"
#mild
run87mild.6 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="mild"),
                           year=1987,model=Model6,modelName="Model 6",iter=1000)
res87mild.6 <- as.data.frame(run87mild.6$results)
res87mild.6$climate <- "mild"
##90
#cold
run90cold.6 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="cold"),
                           year=1990,model=Model6,modelName="Model 6",iter=1000)
res90cold.6 <- as.data.frame(run90cold.6$results)
res90cold.6$climate <- "cold"
#warm
run90warm.6 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="warm"),
                           year=1990,model=Model6,modelName="Model 6",iter=1000)
res90warm.6 <- as.data.frame(run90warm.6$results)
res90warm.6$climate <- "warm"
#mild
run90mild.6 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="mild"),
                           year=1990,model=Model6,modelName="Model 6",iter=1000)
res90mild.6 <- as.data.frame(run90mild.6$results)
res90mild.6$climate <- "mild"
##05
#cold
run05cold.6 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="cold"),
                           year=2005,model=Model6,modelName="Model 6",iter=1000)
res05cold.6 <- as.data.frame(run05cold.6$results)
res05cold.6$climate <- "cold"
#warm
run05warm.6 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="warm"),
                           year=2005,model=Model6,modelName="Model 6",iter=1000)
res05warm.6 <- as.data.frame(run05warm.6$results)
res05warm.6$climate <- "warm"
#mild
run05mild.6 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="mild"),
                           year=2005,model=Model6,modelName="Model 6",iter=1000)
res05mild.6 <- as.data.frame(run05mild.6$results)
res05mild.6$climate <- "mild"
##09
#cold
run09cold.6 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="cold"),
                           year=2009,model=Model6,modelName="Model 6",iter=1000)
res09cold.6 <- as.data.frame(run09cold.6$results)
res09cold.6$climate <- "cold"
#warm
run09warm.6 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="warm"),
                           year=2009,model=Model6,modelName="Model 6",iter=1000)
res09warm.6 <- as.data.frame(run09warm.6$results)
res09warm.6$climate <- "warm"
#mild
run09mild.6 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="mild"),
                           year=2009,model=Model6,modelName="Model 6",iter=1000)
res09mild.6 <- as.data.frame(run09mild.6$results)
res09mild.6$climate <- "mild"

##model 3
#87
#cold
run87cold.3 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="cold"),
                           year=1987,model=Model3,modelName="Model 3",iter=1000)
res87cold.3 <- as.data.frame(run87cold.3$results)
res87cold.3$climate <- "cold"
#warm
run87warm.3 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="warm"),
                           year=1987,model=Model3,modelName="Model 3",iter=1000)
res87warm.3 <- as.data.frame(run87warm.3$results)
res87warm.3$climate <- "warm"
#mild
run87mild.3 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="mild"),
                           year=1987,model=Model3,modelName="Model 3",iter=1000)
res87mild.3 <- as.data.frame(run87mild.3$results)
res87mild.3$climate <- "mild"
##90
#cold
run90cold.3 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="cold"),
                           year=1990,model=Model3,modelName="Model 3",iter=1000)
res90cold.3 <- as.data.frame(run90cold.3$results)
res90cold.3$climate <- "cold"
#warm
run90warm.3 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="warm"),
                           year=1990,model=Model3,modelName="Model 3",iter=1000)
res90warm.3 <- as.data.frame(run90warm.3$results)
res90warm.3$climate <- "warm"
#mild
run90mild.3 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="mild"),
                           year=1990,model=Model3,modelName="Model 3",iter=1000)
res90mild.3 <- as.data.frame(run90mild.3$results)
res90mild.3$climate <- "mild"
##05
#cold
run05cold.3 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="cold"),
                           year=2005,model=Model3,modelName="Model 3",iter=1000)
res05cold.3 <- as.data.frame(run05cold.3$results)
res05cold.3$climate <- "cold"
#warm
run05warm.3 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="warm"),
                           year=2005,model=Model3,modelName="Model 3",iter=1000)
res05warm.3 <- as.data.frame(run05warm.3$results)
res05warm.3$climate <- "warm"
#mild
run05mild.3 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="mild"),
                           year=2005,model=Model3,modelName="Model 3",iter=1000)
res05mild.3 <- as.data.frame(run05mild.3$results)
res05mild.3$climate <- "mild"
##09
#cold
run09cold.3 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="cold"),
                           year=2009,model=Model3,modelName="Model 3",iter=1000)
res09cold.3 <- as.data.frame(run09cold.3$results)
res09cold.3$climate <- "cold"
#warm
run09warm.3 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="warm"),
                           year=2009,model=Model3,modelName="Model 3",iter=1000)
res09warm.3 <- as.data.frame(run09warm.3$results)
res09warm.3$climate <- "warm"
#mild
run09mild.3 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="mild"),
                           year=2009,model=Model3,modelName="Model 3",iter=1000)
res09mild.3 <- as.data.frame(run09mild.3$results)
res09mild.3$climate <- "mild"

##model 2
#87
#cold
run87cold.2 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="cold"),
                           year=1987,model=Model2,modelName="Model 2",iter=1000)
res87cold.2 <- as.data.frame(run87cold.2$results)
res87cold.2$climate <- "cold"
#warm
run87warm.2 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="warm"),
                           year=1987,model=Model2,modelName="Model 2",iter=1000)
res87warm.2 <- as.data.frame(run87warm.2$results)
res87warm.2$climate <- "warm"
#mild
run87mild.2 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987" & dat$climate_clusters=="mild"),
                           year=1987,model=Model2,modelName="Model 2",iter=1000)
res87mild.2 <- as.data.frame(run87mild.2$results)
res87mild.2$climate <- "mild"
##90
#cold
run90cold.2 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="cold"),
                           year=1990,model=Model2,modelName="Model 2",iter=1000)
res90cold.2 <- as.data.frame(run90cold.2$results)
res90cold.2$climate <- "cold"
#warm
run90warm.2 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="warm"),
                           year=1990,model=Model2,modelName="Model 2",iter=1000)
res90warm.2 <- as.data.frame(run90warm.2$results)
res90warm.2$climate <- "warm"
#mild
run90mild.2 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990" & dat$climate_clusters=="mild"),
                           year=1990,model=Model2,modelName="Model 2",iter=1000)
res90mild.2 <- as.data.frame(run90mild.2$results)
res90mild.2$climate <- "mild"
##05
#cold
run05cold.2 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="cold"),
                           year=2005,model=Model2,modelName="Model 2",iter=1000)
res05cold.2 <- as.data.frame(run05cold.2$results)
res05cold.2$climate <- "cold"
#warm
run05warm.2 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="warm"),
                           year=2005,model=Model2,modelName="Model 2",iter=1000)
res05warm.2 <- as.data.frame(run05warm.2$results)
res05warm.2$climate <- "warm"
#mild
run05mild.2 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005" & dat$climate_clusters=="mild"),
                           year=2005,model=Model2,modelName="Model 2",iter=1000)
res05mild.2 <- as.data.frame(run05mild.2$results)
res05mild.2$climate <- "mild"
##09
#cold
run09cold.2 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="cold"),
                           year=2009,model=Model2,modelName="Model 2",iter=1000)
res09cold.2 <- as.data.frame(run09cold.2$results)
res09cold.2$climate <- "cold"
#warm
run09warm.2 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="warm"),
                           year=2009,model=Model2,modelName="Model 2",iter=1000)
res09warm.2 <- as.data.frame(run09warm.2$results)
res09warm.2$climate <- "warm"
#mild
run09mild.2 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009" & dat$climate_clusters=="mild"),
                           year=2009,model=Model2,modelName="Model 2",iter=1000)
res09mild.2 <- as.data.frame(run09mild.2$results)
res09mild.2$climate <- "mild"
