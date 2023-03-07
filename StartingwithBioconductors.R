
R version 4.2.2 (2022-10-31 ucrt) -- "Innocent and Trusting"
Copyright (C) 2022 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/.RData]

> x = 1
> class(x)
[1] "numeric"
> x = 1:3
> class(x)
[1] "integer"
> x = 1L
> class(x)
[1] "integer"
> .Machine$integer.max
[1] 2147483647
> 2^31 - 1 == .Machine$integer.max
[1] TRUE
> round(.Machine$integer.max/ 10^6)
[1] 2147
> as.numeric(1L)
[1] 1
> x = matrix(1:9, ncol = 3, nrow = 3)
> x
[,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9
> rownames()
Error in rownames() : argument "x" is missing, with no default
> rownames(x)
NULL
> rownames(x)= letters[1:3]
> #DO NOT HAVE TO UNIQUE
  > colnames(x)
NULL
> dim(x)
[1] 3 3
> nrow(x)
[1] 3
> ncol(x)
[1] 3
> x[1:2,]
[,1] [,2] [,3]
a    1    4    7
b    2    5    8
> x[,1:2]
[,1] [,2]
a    1    4
b    2    5
c    3    6
> x[1:2,1:2]
[,1] [,2]
a    1    4
b    2    5
> x["a"]
[1] NA
> x["a",]
[1] 1 4 7
> x["a", drop=FALSE]
[1] NA
> X
Error: object 'X' not found
> x
[,1] [,2] [,3]
a    1    4    7
b    2    5    8
c    3    6    9
> x["a",, drop=FALSE]
[,1] [,2] [,3]
a    1    4    7
> #one dimensional matrix
  > x[x>5]
[1] 6 7 8 9
> x = matrix(1:9, ncol = 3, nrow = 3)
> x
[,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9
> x = matrix(1:9, ncol = 3, nrow = 3, byrow = TRUE)
> X
Error: object 'X' not found
> x
[,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9
> x = list(a = rnorm(3), b = letters[2:5], matrix())
> x
$a
[1] -0.3495879  0.1215598 -0.3322398

$b
[1] "b" "c" "d" "e"

[[3]]
[,1]
[1,]   NA

> x[1:2]
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
