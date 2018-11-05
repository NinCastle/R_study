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

# 외부테이터 이용하기

install.packages("readxl")
library(readxl)

# 엑셀 불러오기
df_exam <- read_excel("excel_exam.xlsx")
df_exam

# 분석하기
mean(df_exam$math)
mean(df_exam$english)
mean(df_exam$science)

# 첫번째 row에 변수명이 아닐 경우
# 아래와 같이 첫번째 row가 변수 명으로 변한다.
read_excel("excel_exam_novar.xlsx")

# 따라서 아래와 같이 옵션을 사용하여 변수명을 생성한다.
df_exam_novar <- read_excel('excel_exam_novar.xlsx', col_names = F)
df_exam_novar

# 엑셀 시트가 여러개 있을경우 sheet옵션을 통해 지정된 시트를 불러올수 있다.
df_exam_sheet <- read_excel("excel_exam_sheet.xlsx", sheet = 3)
df_exam_sheet

# csv load
read.csv('csv_exam.csv', header = F)

# 문자가 들어있는 파일을 불러올때
read.csv('csv_exam.csv', stringsAsFactors = F)

# 데이터프레임을 csv로 저장하기
df_midterm <- data.frame(eng = c(90, 80, 40, 23),
                         math = c(30, 40, 60, 20),
                         kor = c(50, 50, 40, 50),
                         class = c(1, 1, 2, 2))
df_midterm

# csv파일로 저장하기
write.csv(df_midterm, file = "df_midterm.csv")

# RData 저장하고 불러오기
save(df_midterm, file = "df_midterm.rda")

# 데이터 삭제
rm(df_midterm)

# 메모리상에서 데이터를 삭제 했기 때문에 변수로 찾을 수 없다.
df_midterm

load("df_midterm.rda")

df_midterm

#RDA 파일은 저장할때 변수도 같이 저장됨으로 따로 load할때 변수에 담을 필요가 없다.

# excel
df_exam <- read_excel("excel_exam.xlsx")
df_exam

# csv
df_csv_exam <- read.csv("csv_exam.csv")
df_csv_exam

# Rda 로드
load("df_midterm.rda")
df_midterm


######
# 데이터 파악하기, 수정하기
######

# 데이터 파악함수
##################
# head()   # 데이터 앞부분 출력
# tail()   # 데이터 뒤부분 출력
# View()   # 뷰어 창에서 데이터 확인
# dim()    # 데이터 차원 출력
# str()    # 데이터 속성 출력
# summary()# 요약 통계량 출력

library(readxl)
exam <- read.csv("csv_exam.csv")

head(exam) # 앞에서 부터 6행 출력
head(exam, 10) # 앞에서 부터 10행 출력
tail(exam) # 뒤에서 부터 6행 출력
View(exam) # 뷰어창에서 확인
dim(exam) # 차원확인 (row, column)
str(exam) # 속성확인
summary(exam) # 요약 통계량 출력


## mpg데이터 파악하기
library(ggplot2)
# ggplot2의 mpg 데이터를 데이터 프레임으로 불러오기
mpg <- as.data.frame(ggplot2::mpg)
head(mpg)
tail(mpg)
View(mpg)
dim(mpg)
str(mpg)
summary(mpg)

## 변수명 바꾸기
df_raw <- data.frame(var1=c(1, 2, 3),
                     var2=c(2, 3, 2))
df_raw

# dplyr 패키지 설치
install.packages("dplyr")
library(dplyr)

# 데이터 프레임 복사본 설치
df_new <- df_raw
df_new

# 변수명 바꾸기
df_name <- rename(df_new, v2 = var2)
df_name

library(ggplot2)
mg <- as.data.frame(ggplot2::mpg)
mg
new_mg <- rename(mg, city = cty, highway = hwy)
new_mg


######
# 파생변수 만들기(Derived Variable)
######

df <- data.frame(var1 = c(4, 3, 8),
                 var2 = c(2, 6, 1))
df

df$var_sum <- df$var1 + df$var2
df

df$var_mean <- (df$var1 + df$var2)/2
df

mpg$total <- (mpg$cty + mpg$hwy)/2
head(mpg)

# 연비 평균
mean(mpg$total)


#####
# 조건문을 이용한 파생변수
#####

summary(mpg$total) # 요약 통계량 산출

hist(mpg$total)

## 합격 판정 변수 만들기
mpg$test <- ifelse(mpg$total >= 20, 'pass', 'fail')
mpg


## 빈도표로 합격판정 자동차 수 살펴보기
table(mpg$test)

## 막대그래프로 빈도 표현하기
library(ggplot2)
qplot(mpg$test)

mpg$grade <- ifelse(mpg$total >= 30, 'A',ifelse(mpg$total >= 20, 'B', 'C'))
head(mpg, 20)

table(mpg$grade)

qplot(mpg$grade)

## A, B, c, D 등급 부여
mpg$grade2 <- ifelse(mpg$total >= 30, 'A', 
                     ifelse(mpg$total >= 25, 'B',
                            ifelse(mpg$total >= 20, 'C', 'D')))

table(mpg$grade2)
qplot(mpg$grade2)

## 혼자해보기

## Q1
midw = as.data.frame(ggplot2::midwest)
head(midw)
tail(midw)
View(midw)
summary(midw)
str(midw)
dim(midw)

## Q2
midw <- rename(midw, total = poptotal)
midw$total

## Q2
midw <- rename(midw, asian = popasian)
midw$asian

## Q3
midw$asianRate <- midw$asian/midw$total * 100
midw$asianRate

## Q4
qplot(midw$asianRate)
mean(midw$asianRate)
midw$ARLS <- ifelse(midw$asianRate >= 0.48, "lagre", "small")
midw

## Q5
table(midw$ARLS)
qplot(midw$ARLS)


######
# 자유자재로 데이터 가공하기
######

# 전처리하기 1

# dplyr의 데이터 전처리 함수
##################
# filter()    # 행추출
# select()    # 열(변수) 추출
# arrange()   # 정렬
# mutate()    # 변수 추가
# summarise() # 통계치 산출
# goup_by()   # 집단별로 나누기
# left_join() # 데이터합치기 (열)
# bend_rows() # 데이터합치기 (행)

# 조건에 맞는 데이터 추출
library(dplyr)
exam <- read.csv('csv_exam.csv')
exam

# filter의 %>% 사용하여 필터링하기
exam %>% filter(class == 1)

exam %>% filter(class == 2)

exam %>% filter(class != 3)

exam %>% filter(class != 4)

exam %>% filter(math > 50)

exam %>% filter(math < 50)

exam %>% filter(english > 80)

exam %>% filter(english <= 80)

## 여러조건(and)
exam %>% filter(math > 50 & english > 80)

exam %>% filter(class == 2 & math > 60)

## 여러조건(or)
exam %>% filter(math > 80 | english > 90)

exam %>% filter(class == 1 | class == 3 | class ==5)

# 위와 같은 코드
exam %>% filter(class %in% c(1, 3, 5))

class1 <- exam %>% filter(class == 1)
class2 <- exam %>% filter(class == 2)

mean(class1$math)
mean(class2$english)

##Q1 p133
mpg_file <- as.data.frame(ggplot2::mpg)
displ4 <-mpg_file %>% filter(displ <= 4)
displ4
displ5 <- mpg_file %>%  filter(displ >= 5)
displ5
mean(displ4$hwy)
mean(displ5$hwy)

##Q2 
audi <- mpg_file %>%filter(manufacturer == 'audi')
audi
mean(audi$cty)
toyota <- mpg_file %>%  filter(manufacturer == 'toyota')
mean(toyota$cty)

##Q3
chevrolet <- mpg_file %>%  filter(manufacturer == 'chevrolet')
ford <- mpg_file %>% filter(manufacturer == 'ford')
honda <- mpg_file %>%  filter(manufacturer == 'honda')
mean(chevrolet$hwy)
mean(ford$hwy) 
mean(honda$hwy)


# 필요한 변수만 추출하기
exam
exam %>% select(math)

exam %>% select(english)

# 여러변수 동시 추출
exam %>% select(class, math, english)

# 변수 제외
exam %>% select(-math)

# 여러변수 제외
exam %>% select(-math, -english)

## filter()와 select() 조합
exam %>% filter(class == 1) %>% select(english)

## 가독성을 위한 줄나누기
exam %>% 
  filter(class == 2) %>% 
  select(math)

## 일부만 출력
exam %>%
  select(science) %>% 
  head # 6 row 까지만 출력

exam %>%
  select(math) %>% 
  head(10)

#self doing
##
classcty <- mpg_file %>% select(class, cty)
suv <- classcty %>% filter(class =="suv")
compact <- classcty %>% filter(class == "compact")
mean(suv$cty)
mean(compact$cty)


## 순서대로 정렬하기
library(dplyr)
exam <- read_excel('csv_exam.csv')
exam

# 오름차순 정렬하기
exam %>% arrange(math) # math 오름차순

# 내림차순 정렬하기
exam %>% arrange(desc(math))

exam %>% arrange(class, math) # class 정렬후 math 정렬

## 파생변수 추가하기 p 113 파생변수 만들기 참조

# 파생변수 추가하기
exam %>% 
  mutate( total = math + english + science) %>% 
  head

# 여러파생변수 한번에 추가하기
exam %>% 
  mutate(total = math + english + science,
         mean = (math + english + science)/3) %>% 
  head

# mutate()함수에 ifelse() 적용하기
exam %>%
  mutate(test = ifelse(science >= 60, 'pass', 'fail')) %>% 
  head

# 추가한 변수를 dplyr 코드에 바로 활용하여 정렬하기
exam %>% mutate(total = math + english + science) %>% arrange(total) %>% head

# self do
library(ggplot2)
mpg_file <- as.data.frame(ggplot2::mpg)

# Q1
mutate_mpg <- mpg_file %>% mutate(total_wy=hwy+cty) %>% head

# Q2
mutate_mpg %>% mutate(mean_wy = total_wy/2) %>% head

# Q3~Q4
mpg_file %>%
  mutate(total_wy = hwy+cty) %>% 
  mutate(mean_wy = total_wy/2) %>%
  arrange(desc(mean_wy)) %>%
  head(3)
