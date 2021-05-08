# sample()을 통한 데이터 무작위 추출하기
# sample(데이터 추출 범위, 데이터 추출 갯수 , replace = FALSE : 비복원 추출을 의미)
S1 = sample(1:45, 6, replace=FALSE)
print(S1)

# sample값 고정시키기 : set.seed() 아무 숫자만 매개 변수로 넣어도 됨.
set.seed(1)
S2 = sample(1:100, 5, replace=FALSE)
print(S2)
# 다시 한번 하면??
S3 = sample(1:100, 5, replace=FALSE)
print(S3)
# set.seed를 붙히면??
set.seed(1)
S4 = sample(1:100, 5, replace=FALSE)
print(S4)
# 잘 뜨는 구만.

# 조건문 (if)

A = c(1,2,3,4,5)

if( 7 %in% A){ # %in% A에 속해 있는지 확인하는 논리문
  print("TRUE")
} else{ 
  print("FALSE")
}

# fouction()을 통해 사용자함수 만들기
Plus_One = function(x){
  y = x+1
  return(y)
}
Plus_One(2)

# R패키지 설치
install.packages("ggplot2")
library(ggplot2) # ggplot2패키지 부착
