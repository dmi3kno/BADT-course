tar_target(cherry50_age_vi_mod_tar, {
  cherry50_age_vi_mod <- brms::brm(
    time ~ age + (1|name_yob), data=cherry50,
    family = gaussian(), refresh=0,
    prior=c(
      prior(normal(100,10), class=Intercept),
      prior(normal(2.5,1), class=b),
      prior(exponential(0.5), class=sigma),
      prior(exponential(1), class=sd)
    ), iter = 5000, seed=42)
  cherry50_age_vi_mod
})
