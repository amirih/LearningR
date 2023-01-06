
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}





v = c(1, 2, 3, 4, 5, 6, 5, 4, 3, 2,2,2,2,2, 1, 2, 3, 4, 3, 2, 4, 3, 2, 5, 4)

getmode(v)



unqv<-unique(v)
unqv
match(v,unqv)
tabulate(match(v,unqv))
max(tabulate(match(v,unqv)))
unqv[which.max(tabulate(match(v,unqv)))]
v= seq(40:64)
u = seq(3.55,14.6, by=0.444)

rel <- lm(u~v)
rel
summary(rel)

data <- data.frame(v=4)
res<-predict(rel, data)
res

plot(v,u, col="blue", main = "HESH", abline(lm(u~v)))

input <- mtcars[, c("mpg","disp", "hp", "wt")]
input

model <- lm(mpg~disp+hp+wt, data=input)

coef <- coef(model)[1]
coef

input <- mtcars[,c("am","cyl","hp","wt")]
logrel = glm(formula = am ~ cyl + hp + wt, data = input, family = binomial)
logrel
summary(logrel)
coef <- coef(logrel)
coef

plot(input$am, input$wt)


a <- seq(-1, 1, by=0.01)

nor <- dnorm(a, mean=.5, sd=0.05)
plot(a,nor)

nor <- pnorm(a, mean=2, sd=0.5)
plot(a,nor)

nor <- qnorm(a, mean=2.5, sd=0.4)
plot(a,nor)

nor <- dnorm(a, mean=2, sd=0.4)
plot(a,a)
a
nor

