
1 + 2

a <- 3
b <- 4

ages <- c(a, b)

names <- c("Ali" , "Hossein")

people <- data.frame( names, ages)

#View(people)

str(people)

people$names
people$ages

people[ ,]
people[1,]
people[,1]
people[,2]
people[2,]
library(tidyverse)

starwars %>% 
  filter(height>100 & mass<100) %>% 
  mutate(heightm=height/100) %>% 
  select(heightm, mass) %>% 
  arrange(mass) %>% 
  plot()
  
head(starwars)
glimpse(starwars)
class(starwars$name)
class(starwars$height)
length(starwars)
length(starwars$name)
names(starwars)
unique(starwars$sex)


missing <- complete.cases(msleep)
missing
msleep[missing,]
missing <- !complete.cases(msleep)
missing
msleep[missing,]

msleep %>% 
  select(contains("s"))
# starwars %>% 
#   select(name, skin_color, everything()) %>% 
#   View()
starwars %>% 
  select(2,3,5,7)

starwars %>% 
  rename("masss"="mass") %>% 
  head()

class(starwars$height)
starwars$height <- as.integer(starwars$height)
class(starwars$height)

starwars %>% 
  mutate(height=as.integer(height)) %>% 
  glimpse()
starwars %>% 
  mutate(hhh=as.integer(height)) %>% 
  glimpse()

class(starwars$height)
starwars$height <- as.factor(starwars$height)
class(starwars$height)
starwars %>% 
  mutate(hhh=as.integer(height)) %>% 
  glimpse()

temp <- starwars
temp$sex <- as.factor(temp$sex)
levels(temp$sex)

temp <- temp %>% mutate(sex=factor(sex, levels=c("male", "female")))
levels(temp$sex)

