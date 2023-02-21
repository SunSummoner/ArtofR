names(x)= c("a","a","b")

x = 1
x = 1:3
print(class(x))
#"integer"
>x = 1L
print(class(x))
#"integer"
print(.Machine$integer.max)
#2147483647
2^31 - 1 == .Machine$integer.max
#TRUE
print(round(.Machine$integer.max/ 10^6))
#2147

print(as.numeric(1L))
#1
x = matrix(1:9, ncol = 3, nrow = 3)
print(x)

print(rownames(x))
#NULL
rownames(x)= letters[1:3]
#DO NOT HAVE TO UNIQUE
print(colnames(x))
#NULL
print(dim(x))

print(nrow(x))

print(ncol(x))

print(x[1:2,])

print(x[,1:2])

print(x[1:2,1:2])

print(x["a"])

print(x["a",])

print(x["a", drop=FALSE])
#NA

print(x)

print(x["a",, drop=FALSE])
#one dimensional matrix
print(x[x>5])
#6 7 8 9
x = matrix(1:9, ncol = 3, nrow = 3)
print(x)

x = matrix(1:9, ncol = 3, nrow = 3, byrow = TRUE)

print(x)

x = list(a = rnorm(3), b = letters[2:5], matrix())
print(x)
print($a)
# -0.3495879  0.1215598 -0.3322398

print($b)
#"b" "c" "d" "e"


$a
[1] -0.3495879  0.1215598 -0.3322398

$b
[1] "b" "c" "d" "e"

> x[1]
$a
[1] -0.3495879  0.1215598 -0.3322398

> x[[1]]
[1] -0.3495879  0.1215598 -0.3322398
> #single brackets we get list
> #double brackets we get element
> x["a"]
$a
[1] -0.3495879  0.1215598 -0.3322398

> x$a
[1] -0.3495879  0.1215598 -0.3322398
> names(x)= c("a", "letters", "c")
> x$letters
[1] "b" "c" "d" "e"
> x$let
[1] "b" "c" "d" "e"
> names(x)= c("a", "letters", "letter2")
> x$let
NULL
> x["letters"]
$letters
[1] "b" "c" "d" "e"

> as.list(1:3)
[[1]]
[1] 1

[[2]]
[1] 2

[[3]]
[1] 3

> x = list(rnorm(3), 3:9)
> x
[[1]]
[1] -1.7178191  0.2615907 -0.7782994

[[2]]
[1] 3 4 5 6 7 8 9

> lapply(x, mean)
[[1]]
[1] -0.7448426

[[2]]
[1] 6

> unlist(lapply(list, function))
Error: unexpected ')' in "unlist(lapply(list, function)"
> 
> unlist(lapply(x, mean))
[1] -0.7448426  6.0000000
> #simplyfying and converting into vectore
> #simplyfying and converting into vector
> sapply(x, mean)
[1] -0.7448426  6.0000000
> x = data.frame(sex =c("M","M","F"), age=c(32,34,29))
> x
  sex age
1   M  32
2   M  34
3   F  29
> x$sex
[1] "M" "M" "F"
> x[1, "sex"]
[1] "M"
> x
  sex age
1   M  32
2   M  34
3   F  29
> sapply(x, class) 
        sex         age 
"character"   "numeric" 
> as.matrix(x)
     sex age 
[1,] "M" "32"
[2,] "M" "34"
[3,] "F" "29"
> #character matrix
> as.list(x)
$sex
[1] "M" "M" "F"

$age
[1] 32 34 29
library(methods)
as(x, "matrix")
     sex age 
[1,] "M" "32"
[2,] "M" "34"
[3,] "F" "29"
> 