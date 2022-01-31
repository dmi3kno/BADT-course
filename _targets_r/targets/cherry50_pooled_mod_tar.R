tar_target(cherry50_pooled_mod_tar, {
  cherry50_pooled_mod <- 
    brms::brm(time~1, data=cherry50, 
              family = gaussian(), refresh=0,
              prior=c(
                prior(normal(0,25), class=Intercept), #assuming centering
                prior(exponential(1), class=sigma)))
  cherry50_pooled_mod
})
