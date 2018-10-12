b <- 2
b * 3
c <- c(1, 2,3, 5)
var3 <- seq(1, 5)
var4 <- seq(1, 10, by=2)
var5 <- seq(1, 10, by=3)
var4
var5
var4 + var5
var2 <- c(1:5)
var2 + var3
str1 <- 'a'
x <- c(1, 2, 3)
x
mean(x)
max(x)
min(x)
str5 <- c("Hello", "World", "is", "good")
str5
paste(str5, collapse = ",")
paste(str5, collapse = ' ')
x_mean <- mean(x)
x_mean
# 패키지 다운로드
install.packages("ggplot2")
# 패키지 로드
library(ggplot2)

# ggplot2 사용해보기
x <- c('a', 'b', 'c', 'd','a')
x

# 빈도 막대 그래프 출력
qplot(x)

# data에 mpg, x축에 hwy 변수를 지정해 그래프 생성
qplot(data = mpg, x = hwy)

# x축 cty
qplot(data = mpg, x = cty)

# x축 drv, y축 hwy, 선
qplot(data = mpg, x = drv, y = hwy, geom = "line")

# x축 drv, y축 hwy, 상자
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot")

# x축 drv, y축 hwy, 상자, drv별 색 표현
qplot(data = mpg, x = drv, y = hwy, geom = 'boxplot', colour = drv)

# help 함수 메뉴얼
?qplot

student_point <- c(80, 60, 70, 50, 90)
mean(student_point)
total_point<- mean(student_point)
total_point

# 데이터 프레임 만들어보기
english = c(90, 80, 60, 70)
english
math = c(50, 60, 100, 20)
math
df_mdscore <- data.frame(english, math)
df_mdscore
class = c(1, 1, 2, 2)
df_mdscore <- data.frame(english, math, class)
df_mdscore
mean(df_mdscore$english)
mean(df_mdscore$math)

#데이터 프레임 한번에 만들기
df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))
df_midterm

flut <- data.frame(제품 = c('사과', '딸기', '수박'),
                     가격 = c(1800, 1500, 3000),
                     판매량 = c(24, 38, 13))
flut
mean(flut$가격)
mean(flut$판매량)