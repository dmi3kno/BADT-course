tar_target(cherry50_unpooled_mod_tar, {
  cherry50_unpooled_mod <- brms::brm(
    time ~ 0+name_yob, data = cherry50,
    family = gaussian(), refresh=0,
    prior=c(
      prior(normal(85, 10), class=b),
      prior(exponential(1), class=sigma)))
  cherry50_unpooled_mod
})
