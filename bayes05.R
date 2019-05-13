###2005
mod1.05 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005"),
                       year=2005,model=Model1,modelName="Model 1",iter=1000)
loot1.05 <- loo(mod1.05$postX)
##################################
mod2.05 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005"),
                       year=2005,model=Model2,modelName="Model 2",iter=1000)
loot2.05 <- loo(mod2.05$postX)
##################################
mod3.05 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005"),
                       year=2005,model=Model3,modelName="Model 3",iter=1000)
loot3.05 <- loo(mod3.05$postX)
##################################
mod4.05 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005"),
                       year=2005,model=Model4,modelName="Model 4",iter=1000)
loot4.05 <- loo(mod4.05$postX)
##################################
mod5.05 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005"),
                       year=2005,model=Model5,modelName="Model 5",iter=1000)
loot5.05 <- loo(mod5.05$postX)
##################################
mod6.05 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005"),
                       year=2005,model=Model6,modelName="Model 6",iter=1000)
loot6.05 <- loo(mod6.05$postX)
##################################
mod7.05 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005"),
                       year=2005,model=Model7,modelName="Model 7",iter=1000)
loot7.05 <- loo(mod7.05$postX)
##################################
mod8.05 <- bayesianGLM(data=subset(dat,dat$YEAR == "2005"),
                       year=2005,model=Model8,modelName="Model 8",iter=1000)
loot8.05 <- loo(mod8.05$postX)
##################################

##saving the results for non-climate-based models
mod2.05 <- as.data.frame(mod2.05$results)
mod3.05 <- as.data.frame(mod3.05$results)
mod6.05 <- as.data.frame(mod6.05$results)
mod7.05 <- as.data.frame(mod7.05$results)
mod8.05 <- as.data.frame(mod8.05$results)