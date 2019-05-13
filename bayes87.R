###1987
mod1.87 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987"),
                       year=1987,model=Model1,modelName="Model 1",iter=1000)
loot1.87 <- loo(mod1.87$postX)

##################################
mod2.87 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987"),
                       year=1987,model=Model2,modelName="Model 2",iter=1000)
loot2.87 <- loo(mod2.87$postX)
##################################
mod3.87 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987"),
                       year=1987,model=Model3,modelName="Model 3",iter=1000)
loot3.87 <- loo(mod3.87$postX)
##################################
mod4.87 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987"),
                       year=1987,model=Model4,modelName="Model 4",iter=1000)
loot4.87 <- loo(mod4.87$postX)
##################################
mod5.87 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987"),
                       year=1987,model=Model5,modelName="Model 5",iter=1000)
loot5.87 <- loo(mod5.87$postX)
##################################
mod6.87 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987"),
                       year=1987,model=Model6,modelName="Model 6",iter=1000)
loot6.87 <- loo(mod6.87$postX)
##################################
mod7.87 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987"),
                       year=1987,model=Model7,modelName="Model 7",iter=1000)
loot7.87 <- loo(mod7.87$postX)
##################################
mod8.87 <- bayesianGLM(data=subset(dat,dat$YEAR == "1987"),
                       year=1987,model=Model8,modelName="Model 8",iter=1000)
loot8.87 <- loo(mod8.87$postX)
##################################

##saving the results for non-climate-based models
mod2.87 <- as.data.frame(mod2.87$results)
mod3.87 <- as.data.frame(mod3.87$results)
mod6.87 <- as.data.frame(mod6.87$results)
mod7.87 <- as.data.frame(mod7.87$results)
mod8.87 <- as.data.frame(mod8.87$results)



