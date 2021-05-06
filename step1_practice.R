# 1. sample을 활용하여 로또번호 1~45, 6개를 추첨하라.
lotto = sample(1:45, 6, FALSE)
print(lotto)

# 2. 다음의 수열로 구성된 벡터를 생성하라.
AV = seq(1,100, by=2)
print(AV)
BV = rep(c(1,2,3,4,5), rep(2, 5))
print(BV)

# 3. 3 * 3 행렬을 작성하라.
tensor = c(c(1,2,3), c(4,5,6), c(7,8,9))
print(tensor)
data = matrix(tensor, 3, 3, byrow=TRUE)
data

# function을 사용하여 다음의 함수를 만들어라.
quadratic = function(x, y){
  result = x*x+y+10
  return(result)
}
quadratic(2, 1)

# for()문을 활용하여 구구단을 만들어라.
for (i in c(2:9)) {
  for(j in c(1:9)){
    z = i * j
    print(paste(i, " * ", j, " = ", z))
  }
}
## step1끝~~
