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

aa=c(2,3,5)
aa
aa[1] #다괄호는 추출, 혹은 색인
aa[c(1,3)]
aa[2]="a"
aa

matrix(1:4)
matrix(1:4, nrow = 2)
matrix(1:4, nrow = 2, byrow= TRUE)
#이 부분 이해가 잘 안간다. 왜 갑자기 2x2 행렬로 바뀌는거지? 행과 열 둘다 지정을 해야하는거 아닌가?
#일단 다른것들을 함 해보자
matrix(1:6)
matrix(1:6, nrow = 2)
matrix(1:6, nrow = 3)
#그냥 원소 갯수를 지정한 행의 수나 열의 수로 나눠서 알아서 행렬로 만드는듯

install.packages("imager")
library("imager")
img = load.image("sample_cat_image.jpg")
dim(img) #dim은 행과 열의 갯수를 알려준다.
img[1:2,1:2,1,1] #이게 대체 뭔코드야?
plot(img)

data.frame(aa=c(1,2,3),
           bb=c("a","b","c"))
data.frame(aa=c(1,2,3),
           bb=c("a","b")) #차원을 맞춰서 합쳐야 한다는걸 이야기 하실려고 이런 코드를 짯던것 같다.

df=data.frame(aa=c(1,2,3),
           bb=c("a","b","c"))
df$aa
df[,1] #데이터 프레임의 1열을 출력
df[1,] #데이터 프레임의 1행을 츨력

dir() #작업디렉토리 안의 내용무 목록 확인하기
getwd() #작업폴더 확인

0.9^10
"귤"=="고구마"
"귤"!="고구마" #신기하네....왜 여기선 =가 하나만 들어가지?
abs(3) #절댓값
abs(-3)
round(24.51)
round(24.49)
round(24.51,1)
round(24.51,-1) #반올림, 뒤에 숫자는 자릿수
floor(24.51) #버림
ceiling(24.51) #올림

1:4 #1 2 3 4 
4:1 #4 3 2 1
3:-3 #3 2 1 0 -1 -2 -3

seq(1,3) #수열생성: seq 함수를 사용한 숫자 생성
seq(from=1,to=3)
seq(1,3,1)
seq(from=1,to=3,by=1)
seq(1,5,by=2) #1 3 5
seq(from=1, to=3,length.out=8) #1부터 3까지 8개의 등간격으로 나누는것
seq(from=1, to=3,length.out=9)
rep(1:3,3) #아마 repeat 함수인것 같다.
rep(x=1:3,times=3)
rep(times=3,x=1:3)


head(aws)
tail(aws)
str(aws) #structure구조
summary(aws) #기술통계량 (최대, 최소, 평균)
nrow(aws) #row 갯수
ncol(aws) #column 갯수
colnames(aws) #변수명

aws[2,] #df[row, col]
# df[row,col]코드 뒤에 113같이 아무것도 입력 안한건 그냥 모든 col를 출력하는것
aws[135,]
aws[4:9,]
aws[,3] #결과보고 놀랐다....하지만 맞게 잘 나온거다. 컴퓨터가 미친줄;
aws[,"wind"]
aws[,"Wind"] #위의 코드는 에러가 나고 아래는 또(이렇게 놀랍게)잘 나오는데 이 둘의 차이는 변수의 대소문자
aws[,c("AWS_ID","TA")]

aws[2:4, 1:4]
aws[2:4, -5] #-는 다섯번째 변수를 제외한다는 의미
aws[2:4, c(-2,-4)]
aws[2:4, -c(2,4)] 


aws[1, ]=-1 #aws의 첫번째 행의 모든 변수에 -1을 추가한다.
head(aws)
aws[,6]="new" #aws의 6번째 열에 값 new를 추가한다.
head(aws)
aws[,ncol(aws)+1]="new!!!" #나는 이게 변수 명을 바꿔주는건줄 알았어...근데 아닌가봐
head(aws) #아마 직접 숫자를 지정해줄수 없을정도로 값이 커버리면 저렇게 지정한다는걸 알려줄려고 그러신듯

#퀴즈: colname()함수를 활용하여 6,7번째 변수명을 각각 "aa","bb"로 변경하시오
colnames(aws)[6:7]=c("aa","bb")
head(aws)
#이게 왜 이렇게 해야하는건지,왜 저걸 한번에 안묶는지는 나도 잘 모르겠다.
#그냥 익숙해지면 되는 문제인것 같다. 이건 어쩔수 없잖아. 만든사람 맘인거지 뭐


aaa=aws[10:13,3:4]
bbb=aws[20:23,3:4]
cbind(aaa,bbb) #두개의 데이터를 붙여놓는 방법. 이건 옆으로 붙이기
rbind(aaa,bbb) #이건 세로로 붙여놓는거

df_1=data.frame(aa=c("a","b","c","d"),bb=1:4)
df_1
df_1[df_1$bb>=3,]
df_1[df_1$aa=="b",]
df_1[df_1$aa!="b",]
df_1[(df_1$bb>1)&(df_1$bb<4),] #&는 조건을 동시에 만족시키는 연산자

df_1[(df_1$aa=="a")| (df_1$aa=="c"),] # |는 or의 의미를 가지고 있다.
df_1[df_1$aa %in% c("a", "c"), ] #이게 더 빠르다고 한다. 대충 aa에서 a와c를 가지고 오라...이런거...쩝
# %in% 벡터 내 특정값 포함 여부 확인 연산자