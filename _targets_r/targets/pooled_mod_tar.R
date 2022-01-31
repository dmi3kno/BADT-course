tar_target(pooled_mod_tar, {
  pooled_mod <- 
   brm(time~1+age, data=cherry50,
    family=gaussian(), refresh=0, silent=1,
    prior=c(
     prior(normal(0, 2.5), class=Intercept),
     prior(normal(0,2.5), class=b),
     prior(exponential(1), class=sigma)))
  pooled_mod
})
