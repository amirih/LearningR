# R for Data Science Book
library(tidyverse)
library(nycflights13)
library(gapminder)
library(Lahman)

data <- dput(mtcars)
head(data)
data
plot(data$mpg, data$wt)


mpg
mtcars
head(mpg)
head(mtcars)
? mpg

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))
ggplot(data = mpg) + geom_histogram(mapping = aes(x = displ))

nrow(mpg)
ncol(mpg)
? mpg
ggplot(data = mpg) + geom_point(mapping = aes(x = hwy, y = cyl))
ggplot(data = mpg) + geom_point(mapping = aes(x = class, y = drv))

ggplot(data = mpg) + geom_point(
  mapping = aes(
    x = cty,
    y = hwy,
    color = class,
    size = displ,
    shape = drv
  ),
  color = "blue"
)
ggplot(data = mpg) + geom_point(mapping = aes(
  x = cty,
  y = hwy,
  color = displ < 5,
  stroke = 2
))

? mpg
? geom_point

ggplot(data = mpg) + geom_point(mapping = aes(x = cty, y = hwy)) +
  facet_wrap( ~ displ, nrow = 3)

ggplot(data = mpg) + geom_point(mapping = aes(x = cty, y = hwy)) + facet_grid(drv ~
                                                                                cyl)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)


ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

ggplot(data=mpg) + geom_bar(mapping = aes(x=cty))

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv ,color=drv))
 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = cty)) +
  geom_smooth(mapping = aes(x = displ, y = cty))

ggplot(data = mpg, mapping = aes(x = displ, y = cty)) + 
  geom_point() +
  geom_smooth()
ggplot(data = diamonds) + 
  stat_count(mapping = aes(x = cut))
