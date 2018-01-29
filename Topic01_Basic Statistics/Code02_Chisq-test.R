Mat <- matrix(c(30, 20, 45, 5), ncol=2, byrow=TRUE)
colnames(Mat) <- c("구매", "비구매")
rownames(Mat) <- c("남성", "여성")

Xsq <- chisq.test(Mat, correct=FALSE)) # No continuity correction
sum((Xsq$observed - Xsq$expected)^2 / Xsq$expected)  # 검정통계량

