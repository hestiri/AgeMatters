###2009
mod1.09 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009"),
                       year=2009,model=Model1,modelName="Model 1",iter=1000)
loot1.09 <- loo(mod1.09$postX)
##################################
mod2.09 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009"),
                       year=2009,model=Model2,modelName="Model 2",iter=1000)
loot2.09 <- loo(mod2.09$postX)
##################################
mod3.09 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009"),
                       year=2009,model=Model3,modelName="Model 3",iter=1000)
loot3.09 <- loo(mod3.09$postX)
##################################
mod4.09 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009"),
                       year=2009,model=Model4,modelName="Model 4",iter=1000)
loot4.09 <- loo(mod4.09$postX)
##################################
mod5.09 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009"),
                       year=2009,model=Model5,modelName="Model 5",iter=1000)
loot5.09 <- loo(mod5.09$postX)
##################################
mod6.09 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009"),
                       year=2009,model=Model6,modelName="Model 6",iter=1000)
loot6.09 <- loo(mod6.09$postX)
##################################
mod7.09 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009"),
                       year=2009,model=Model7,modelName="Model 7",iter=1000)
loot7.09 <- loo(mod7.09$postX)
##################################
mod8.09 <- bayesianGLM(data=subset(dat,dat$YEAR == "2009"),
                       year=2009,model=Model8,modelName="Model 8",iter=1000)
loot8.09 <- loo(mod8.09$postX)
##################################

##saving the results for non-climate-based models
mod2.09 <- as.data.frame(mod2.09$results)
mod3.09 <- as.data.frame(mod3.09$results)
mod6.09 <- as.data.frame(mod6.09$results)
mod7.09 <- as.data.frame(mod7.09$results)
mod8.09 <- as.data.frame(mod8.09$results)
