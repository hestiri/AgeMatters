##helper function to run and store Bayesian GLM
bayesianGLM <- function(data,#=d09,
                        year,#=2009,
                        model,#=Model1,
                        modelName,# = "Model 1",
                        iter=2000,
                        seed=1234) {
  post <- stan_glm(formula =model,
                    data = data, family = gaussian(link = "identity"), seed=seed,iter=iter)
  draws <- as.data.frame(post)
  draws$`(Intercept)` <- draws$sigma <- NULL
  draws$year <- paste0(year)
  draws$model <- paste0(modelName)
  draws$ID <- seq.int(nrow(draws))
  
  draws.long <- draws %>% 
    gather(v, value, age05:age80p) %>% 
    separate(v, c("var", "col")) %>% 
    arrange(year) %>% 
    spread(col, value)
  draws.long <- select(draws.long,year,model,ID,var,'<NA>')
  colnames(draws.long)[5] <- "estimate"
  
  aggregated_output <- aggregate(estimate ~ var,data=draws.long, FUN=median)
  colnames(aggregated_output)[2] <- "median"
  draws.long <- merge(draws.long,aggregated_output,by="var")
  
  return(list("results"=draws.long,
              "postX"=post))
}

