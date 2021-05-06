# 데이터 불러오기
HR = read.csv('D:\\R-project\\Must Learning with R\\datasets\\HR_comma_sep.csv')
# /로 경로를 구분하거나 \\로 경로를 구분할 수 있다.

# 데이터 윗부분 띄우기
head(HR, 5)
# 데이터의 strings 파악
str(HR)
# 데이터를 요약해서 보기
summary(HR)

# 데이터 strings 변경
summary(HR$left)
HR$Work_accident=as.factor(HR$Work_accident)
HR$left=as.factor(HR$left)
HR$promotion_last_5years=as.factor(HR$promotion_last_5years)
summary(HR$left)
HR$left

# ifelse() 조건에 맞는 값 할당하기
# ifelse(조건, TRUE, FALSE)
HR$satisfaction_level_group_1 = ifelse(HR$satisfaction_level > 0.5, 'High', 'Low')
HR$satisfaction_level_group_1 = as.factor(HR$satisfaction_level_group_1)
summary(HR$satisfaction_level_group_1)

# 조건이 추가가 되었을 경우에는 ifeles문 안에 ifelse문을 쓰면 된다.
HR$satisfaction_level_group_2 = ifelse(HR$satisfaction_level > 0.8,'High',
                                       ifelse(HR$satisfaction_level > 0.5, 'Mid', 'Low'))
HR$satisfaction_level_group_2 = as.factor(HR$satisfaction_level_group_2)
summary(HR$satisfaction_level_group_2)

# 조건에 맞는 데이터 추출 subset
# subset(데이터, 추출 조건)
HR_High = subset(HR, salary=='high')
summary(HR_High$salary)

HR_High_IT = subset(HR, salary == 'high' & last_evaluation > 0.5)
print(xtabs(~ HR_High_IT$last_evaluation + HR_High_IT$salary))

# 집계된 데이터 만들기
# 패키지 설치
install.packages("plyr") # 엑셀의 피벗테이블 같은 용도
library(plyr)
# ddply(데이터, 집계기준, summarise, 요약 변수)
SS = ddply(HR, # SS라는 데이터 셋을 생성
           c("sales", "salary"), summarise,
           M_SF = mean(satisfaction_level1),
           COUNT = length(sales),
           M_WH = round(mean(average)))
install.packages('tidyverse')
