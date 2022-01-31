tar_target(cherry50_hi_mod_tar, {
  #get_prior(time ~ (1|name_yob), family = gaussian(), data=cherry50)
  cherry50_hi_mod <- brms::brm(
    time ~ (1|name_yob), data=cherry50,
    family = gaussian(), refresh=0,
    prior=c(prior(normal(85,10), class=Intercept),
            prior(exponential(1), class=sd),
            prior(exponential(0.5), class=sigma)),
    iter = 5000, seed=42)
  cherry50_hi_mod
})
