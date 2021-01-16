#자동완성은 TAB
#실행은 [ctrl+[enter]
#이건 주석

install.packages("beepr")
library("beepr", help, pos = 2, lib.loc = NULL)
beep(2)
beep(4)
#이 밤중에 이걸 하는 내가 레전드다.... 어서 끝내고 자자 제발 

#껏다 키면 패키지를 다시 불러와야 한다.
#패키지 이름 뒤에 콜론 두개를 치면 해당 패키지에 포함 되어있는 함수를 볼 수 있다.

aws = read.delim("AWS_sample.txt",
                 sep="#",
                 stringsAsFactors = FALSE)
head(aws)
#stringasfactor: 변수에 문자가 있을 경우 자동으로 factor타입으로 변환된다.
#하지만 factor 변수는 연산이 되지 않으므로 stringsAsFactors() 함수를 써서 
#factor타입으로 변환되지 않게 한다.

aws = read.csv("AWS_sample.txt",
                sep="#")
head(aws)

df = read.csv("bike.csv")
head(df, 2)

TRUE
FALSE
TRUE+FALSE
TRUE+TRUE
sum(c(TRUE, TRUE, FALSE)) 

#c() combine 함수, 원소를 묶어줌.
c(1,2,3)
c(1,2,"a") #숫자든 문자든 하나의 속성만 가질 수 있다. 그리고 문자가 숫자보다 우선순위다.
