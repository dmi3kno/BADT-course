tar_target(cherry50_age_vsi_mod_tar, {
  #get_prior(time ~ age + (age|name_yob), data=cherry50)
  cherry50_age_vsi_mod <- brms::brm(
    time ~ age + (age|name_yob), data=cherry50,
    family = gaussian(), refresh=0,
    prior=c(
      prior(normal(100,10), class=Intercept),
      prior(normal(2.5,1), class=b),
      prior(exponential(0.5), class=sigma),
      prior(exponential(1), class=sd),
      set_prior("lkj(1)", class="cor")
    ), iter = 5000, seed=42)
  cherry50_age_vsi_mod
})
