#### 일표본 T-test (One sample T-test) ####

### 예제 데이터 생성 (결과 비교를 위해 2개의 표본 생성)
# 표본으로 뽑힌 스타벅스의 자바 칩 프라푸치노를 통해, 자바 칩 프라푸치노가 340kcal인지 검증하려 한다.
# starbucks1 : 실제 평균이 340kcal인 모집단에서 뽑힌 표본
# starbucks2 : 실제 평균이 345kcal인 모집단에서 뽑힌 표본 
starbucks1 <- rnorm(n=50, mean=340, sd=5)
starbucks2 <- rnorm(n=50, mean=345, sd=5)
summary(starbucks1)
summary(starbucks2)

### T-test
t.test(x=starbucks1, mu=340, alternative="two.sided") # H0 accept
t.test(x=starbucks2, mu=340, alternative="two.sided") # H0 reject



#### 독립 표본 T-test (Two sample T-test) ####

### 예제 데이터 생성  (결과 비교를 위해 이디야의 2개 표본 그룹 생성)
# 표본으로 뽑힌 스타벅스의 초콜릿 크림 칩 프라푸치노와 이디야의 초콜릿 칩 플랫치노를 통해,
# 프라푸치노와 플랫치노의 칼로리의 차이가 14kcal인지 검증하려 한다. 
# starbucks : 실제 평균이 370kcal인 모집단에서 뽑힌 표본
# ediya1 : 실제 평균이 384kcal인 모집단에서 뽑힌 표본
# ediya2 : 실제 평균이 374kcal인 모집단에서 뽑힌 표보
starbucks <- rnorm(n=50, mean=370, sd=5)
ediya1 <- rnorm(n=50, mean=384, sd=5)
ediya2 <- rnorm(n=50, mean=370, sd=5)

### T-test
t.test(x=ediya1, y=starbucks, mu=14, alternative="two.sided")
t.test(x=ediya2, y=starbucks, mu=14, alternative="two.sided")



#### 대응 표본 T-test (Paired sample T-test) ####

### 예제 데이터 생성 
# 토론수업이 언어능력에 끼치는 영향을 보기 위해, 
# 400명의 학생을 대상으로 토론수업 전과 후의 언어능력을 측정하였다. 
# 토론수업 전과 후의 점수는 매치가 되어있다. (짝이 있다.)
before <- runif(n=400, min=25, max=90)
diff <- runif(n=400, min=-2, max=5)
after <- before + diff 

### T-test
t.test(x=after, y=before, mu=0, alternative="greater", paired=TRUE)
