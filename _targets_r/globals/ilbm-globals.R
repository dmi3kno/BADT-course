options(tidyverse.quiet = TRUE)
tar_option_set(packages = c("tidyverse", "posterior", "rstan", "brms", "bayesplot"))
options(mc.cores = parallel::detectCores()-2)
options(clustermq.scheduler="multicore")
