data(iris)
data(airquality)
mat = matrix(1:9, 3, 3)

# function(x) {2*x} : lambda함수
apply(mat, 1, function(x) {2*x})

## 1: 행단위 연산, 2: 열단위 연산 
apply(mat, 1, mean)
apply(mat, 2, mean)

## tapply(연속형 변수, 범주형 변수, 사용할 함수) : 그룹 별 요약 
# iris data
tapply(iris$Sepal.Length, iris$Species, mean)

# airquality data
tapply(airquality$Ozone, airquality$Month, sd, na.rm=T)

## sapply, lapply : 변수 별 요약 
# vector로 반환
sapply(iris[-5], mean)

## list로 반환
lapply(iris[-5], mean)

## ddply(dataset, .(집단변수), 요약집계, 칼럼병=함수(변수))
ddply(iris, .(Species), summarise, avg=mean(Sepal.Length), sd=sd(Sepal.Length))


