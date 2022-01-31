library(tidyverse)
freq_runners_df <- mdsr::Cherry %>% 
  group_by(name.yob) %>% 
  mutate(max_age=max(age)) %>% 
  count(name.yob, max_age) %>% 
  arrange(-n) %>% 
  filter(n>8, max_age>=50, max_age<=65)

cherry50 <- mdsr::Cherry %>% 
  semi_join(freq_runners_df) %>% 
  mutate(gun_time=is.na(net),
    time=ifelse(gun_time, gun, net)) %>% 
  select(-net,-gun) %>% 
  filter(!is.na(time)) %>% 
  rename(name_yob=name.yob)

write_csv(cherry50,"data/mdsr_cherry50.csv")

cherry50 <- read_csv("data/mdsr_cherry50.csv")

ggplot(cherry50, aes(x=age, y=time))+
  geom_point()+geom_smooth(method = "lm")


