###1990
mod1.90 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990"),
                       year=1990,model=Model1,modelName="Model 1",iter=1000)
loot1.90 <- loo(mod1.90$postX)
##################################
mod2.90 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990"),
                       year=1990,model=Model2,modelName="Model 2",iter=1000)
loot2.90 <- loo(mod2.90$postX)
##################################
mod3.90 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990"),
                       year=1990,model=Model3,modelName="Model 3",iter=1000)
loot3.90 <- loo(mod3.90$postX)
##################################
mod4.90 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990"),
                       year=1990,model=Model4,modelName="Model 4",iter=1000)
loot4.90 <- loo(mod4.90$postX)
##################################
mod5.90 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990"),
                       year=1990,model=Model5,modelName="Model 5",iter=1000)
loot5.90 <- loo(mod5.90$postX)
##################################
mod6.90 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990"),
                       year=1990,model=Model6,modelName="Model 6",iter=1000)
loot6.90 <- loo(mod6.90$postX)
##################################
mod7.90 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990"),
                       year=1990,model=Model7,modelName="Model 7",iter=1000)
loot7.90 <- loo(mod7.90$postX)
##################################
mod8.90 <- bayesianGLM(data=subset(dat,dat$YEAR == "1990"),
                       year=1990,model=Model8,modelName="Model 8",iter=1000)
loot8.90 <- loo(mod8.90$postX)
##################################


##saving the results for non-climate-based models
mod2.90 <- as.data.frame(mod2.90$results)
mod3.90 <- as.data.frame(mod3.90$results)
mod6.90 <- as.data.frame(mod6.90$results)
mod7.90 <- as.data.frame(mod7.90$results)
mod8.90 <- as.data.frame(mod8.90$results)
