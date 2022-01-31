tar_target(cherry50_age_pooled_mod_tar, {
  #get_prior(time~age, data=cherry50)
  cherry50_age_pooled_mod <- brms::brm(
    time~age, data=cherry50,
    family = gaussian(), refresh=0,
    prior=c(prior(normal(0,35), class=Intercept),
            prior(normal(0,15), class=b),
            prior(exponential(1), class=sigma)))
  cherry50_age_pooled_mod
})
