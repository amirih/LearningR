vector <- c("hey", "hoy", "hay")
class(vector)
print(vector)


list1 <- c(c(1, 2, 3), "hoy", sin)
class(list1)
print(list1)

list2 <- list(c(1, 2, 3), "hoy", sin)
class(list2)
print(list2)

matrix <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8),
                 nrow = 3,
                 ncol = 4,
                 byrow = FALSE)
class(matrix)
print(matrix)

array1 <- array(c("hey", "hay", "hoy"), dim = c(4, 3, 2))
class(array1)
print(array1)

factor_array <- factor(array1)
class(factor_array)
levels(factor_array)
print(factor_array)
print(nlevels(factor_array))

print(ls())
print(ls(pattern = "li"))

.hiddenVariable = list(c("a", 2, 3), "b", "c", list1)
print(ls())
print(ls(all.name = TRUE))


rm(list = ls())
print(ls())
print(ls(all.name = TRUE))


val = 0


repeat {
  print("valule is:")
  print(val)
  val <- val + 1
  if (val > 2) {
    break
  }
}

vector = c(1, 2, 3, 4, 5)

for (val in vector) {
  print("loop1")
}

for (val in 1:10) {
  cat("\nloop3", val)
}



vector = list(c("h", "o", "s"), "s", "e", "i", "n")

for (val in vector) {
  print(val)
}
class(vector)

fun <- function (val1, val2) {
  print(val1)
  val2 <- val2 - 1
  
  print(val2)
  
  val1
  
}
fun(2, 3)
fun(4, 8)
v1 = 2
v2 = 7
print(fun(2, 7))
v3 = fun(v1, v2)
print(v3)
v2 = fun(val2 = 6, val1 = 2)
print(v2)
# default value in function
fun2 <- function(a = 2, b = 3) {
  a + b
}
print(fun2())
print(fun2(1, 2))
print(fun2(1))
print(fun2(, 5))

# STRING

print("ali'reza'")
string1 <- c ("hossein1", "amiri1", "emory1", "computer1 scince1")
string2 <- c ("hossein2", "amiri2", "emory2", "computer2 scince2")


print(string1)
paste(string1, string2)
paste(string1, string2, sep = "3", collapse = "4")

vectorIntegerNumber = seq(1:10)
vectorFloatNumber = seq(1, 10, by = 0.55555)
format(vectorIntegerNumber)
format(vectorFloatNumber, digits = 4)

format(vectorFloatNumber, nsmall = 6)

s <- c('apple', 'red', 5, TRUE)

class(s)
t <- c("Sun", "Mon", "Tue", "Wed", "Thurs", "Fri", "Sat")
y <- t[c(7, 1, 2, 3, 4, 5, 6)]
print(y)


listElements <- list(vectorFloatNumber, vectorIntegerNumber, fun2)
names(listElements) <- c("fno", "ino", "fun")

print(listElements)

listElements$fun(5, 8)
listElements[1]
listElements[2:3]


vec1 <- unlist(listElements[1])

class(vec1)

