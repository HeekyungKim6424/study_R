#오랜만에 하는 복습.......
# chaper3 데이터 전처리 복습할 차례!!

install.packages("ggplot2")
data("diamonds", package="ggplot2") #ggplot에 들어있는 diamond 데이터를 쓰겠다.
head(diamonds,2)
table(diamonds$cut, diamonds$clarity) #table은 객체의 고유 원소 개수 계산
#나온 결과를 보니깐 cut과 clarity를 각각 행과 열로 만들어서 새로운 테이블 생성...
#왜 객체의 고유 원소 개수 계산이라고 써져있는거지?? 교재가 잘못된듯.

table(diamonds$cut) #이렇게 하면 원래 위에 나와있는 table의 제 역할을 하는것 같다.
#결론은 하나만 도출하라고 했을때는 이렇게 나오는걸로!
prop.table(table(diamonds$cut)) #prop는 프로포션(비율)의 준말
round(prop.table(table(diamonds$cut))*100,2)

data("airquality")
df=airquality
head(df,2)

unique(df$Month) #대소문자 조심하기 
#unique는 (1차원) 객체의 고유 원소를 추출한다. 이게 뭔말이지?
#month에 들어간 변수의 경우의 수 다 나열한듯.
length(df$Month) 
#month의 갯수를 세주는듯. 이게 왜 필요하지? 그냥 nrow 하면 되는거 아닌가?
length(unique(df$Month))
quantile(df$Wind) #해당 객체의 분위수 계산
median(df$Wind) #중앙값 값
quantile(df$Wind, probs=c(0.1,0.9)) #백분위에서 하위10 상위10
quantile(df$Wind, probs=0.5)

nchar("abc") #number of charicter 이라는 뜻이라는데 객체의 갯수가 뭐야...
nchar("brilliant") #안에 있는 글자 수를 말하는것 같다.
paste0("file_name",".csv") 
#문자를 이어 붙이는데 공간이 0이 되는? 띄어스기를 다 없애주는 함수인것 같다.
#파일명 같은거 붙일때 유용하게 쓰인다고 한다. (근데 애초에 해당 프로그램에서 다 확장명을 알아서 정해주는데 이게 뭔...?)
paste("010","1234","5678",sep="-")
paste("010","1234","5678",collapse="-")
paste(c("010","1234","5678"),sep="-")
paste(c("010","1234","5678"),collapse="-") #이거 차이점 좀 누가 설명해주실분?

dia=as.data.frame(diamonds)
head(dia)

install.packages("splitstackshape")
#특정 변수로 구분되어 있는걸 찢어주는 역할을 한다고 한다. 나도 잘 모르겠음. 쓰다보면 알겠지
library("splitstackshape")
dia_split=cSplit(indt=dia,splitCols="cut",sep=" ") #문자열 분리
head(dia_split,10) #굳이 이렇게까지 해야해...? 이 데이터로...?
unique(dia_split[,c("cut_1","cut_2")]) #대표님 이걸 하신 의도가 뭔가요..??
#변수 두개 이상 데이터 프레임으로 넣어주면 중복된 걸 다 날려준다고 한다.

#반복문
for(number in 1:3){
    print(number)
}
for (number in c(1,3,9)){
    print(number)
}
for(num in 3:6){
    print(num*num)
}

df_1=data.frame(aa=c("a","b","c","d"), bb=1:4)
df_1
for (num in 1:4){
    df_1[num,"new_column"]=num*2
}
df_1 #이거 헷갈리네.....

df_1[num,"new_column"]=num*2 
aws[1, ]=-1 #aws의 첫번째 행의 모든 변수에 -1을 추가한다.
aws[,6]="new" #aws의 6번째 열에 값 new를 추가한다.
#데이터 프레임에 []안에 첫번째는 행 두번째는 열이 맞는것 같다. 
#내가 헷갈려한 코드는 행에는 num을 넣고 그걸 뉴 컬럼이라는 열로 묶은것 같다

df_1=data.frame(aa=letters[1:4],
                bb=1:4) #letters[1:4]는 abcd 순서를 말하는것 같다.
df_1[,"new_column"]=df_1$bb*2
df_1 #내가 예상하는대로 나오는걸 보니 복습을 잘 하고 있군!!

df_1=data.frame(aa=letters[1:4],
                bb=1:4)
for(num in 1:4){
    df_1[num, "new_column"]=num*2
    print(df_1)
}

df_1=data.frame(aa=letters[1:4],
                bb=1:4)
for(num in 1:4){
  df_1[num,"new_column"]=num*2
  print(df_1)
  Sys.sleep(3)
} #위의 코드와 다른 점은 sys.sleep이라는 코드가 추가 되어있다는 것이다.
#sleep 코드는 콘솔창에 결과가 늦게 나오게 해주는 코드다. 느 리 게...

for (n_file in 1:5){
    print(paste0("file_no_", n_file, ".csv"))
}
for (n_file in 1:5){
    print(paste0("file_no_",
    sprintf(fmt="%02d", n_file),
    ".csv"))
} #저 %02d 파이썬 포맷 형식에서 배운것 같은데...까먹었네....

bike=read.csv("bike.csv")
head(bike,2)

for (season in unique(bike$season)){
    print(season)
}

for (season in unique(bike$season)){
    bike_sub = bike[bike$season ==season, ]
    print(head(bike_sub,2))
} #코드 이해하는데 한참 걸렸네.....흥미로운 코드내요

dir.create("bike") #작업 폴더 바로 아래에 bike라는 이름의 폴더 생성
list.files(pattern="bike") #파일과 폴더 목록 중 bike가 들어간것

#퀴즈: 근데퀴즈 내용이 뭔 내용이였는지 알아야 하든 말든 하지....
# Q. for 반복문을 활용하여
#    bike 폴더에 season별 bike 데이터를 분할하여 저장하시오.
for (season in unique(bike$season)){
    bike_sub =bike[bike$season==season, ]
    file_name = paste0("bike/bike_season_",season,".csv")
    write.csv(bike_sub, file_name, row.names=FALSE)
    #첫번째 인수는 저장하고자 하는 데이터, 두번째는 파일 이름, 세번째는 추가 옵션
}

#데이터를 한데 모아서 불러올때 쓰는 코드
file_list=list.files(path='bike/',full.names=TRUE)

bike_total= data.frame() #비어있는 데이터 객체 프레임(이걸 갑자기 여기에 왜 넣은거지?)
                         #아래에 있는 데이터를 넣기 위해 임의로 데이터 프레임을 만들어줌
for(file_name in file_list){
    bike_sub =read.csv(file_name)
    print(paste0(file_name,": ",nrow(bike_sub)))
    bike_total=rbind(bike_total,bike_sub)
}
head(bike_total)
nrow(bike_total)


#if 문
n=3
if(n==3){
    print("n은 3입니다.")
}else {
    print("n은 3이 아닙니다.")
}

n=5
if(n==3){
    print("n은 3입니다.")
}else {
    print("n은 3이 아닙니다.")
}

df_1 =data.frame(aa=c("a","b","c","d"),bb=1:4)
for(n in 1:4){
    if (n>=3){
        print(df_1[n,"bb"]) #여기서는 bb열의 n행을 출력하라 이정도 의미인것 같다.
    }else{
        print("what?!")
    }
}


#속성 확인 및 변환

aa=1234
bb="test"
cc=TRUE
dd=NA

#class함수는 지금 다루고 있는 객체의 속성을 알려준다.
class(aa)
class(bb)
class(cc)
class(dd)

#영어 의문문을 생각해보면 된다. is it~? 이렇게 물어보는 어쩌구.
is.numeric(aa)
is.character(bb)
is.logical(cc)
is.na(dd)
is.na(cc)

#as는 ~화 시키다. 그니깐 그런 속성이 아닌데 그런 속성으로 만드는 것이다.
as.character(aa)
as.numeric(bb)
as.numeric("123")

as.character(cc)
as.numeric(cc)
as.character(dd)
as.numeric(dd)
#여기서 나오는 결과값 NA는 말이 안될때 나오는것. (ex.글을 숫자로 바꾸기)
#결측 NA는 경우가 특이하고 애초에 비어있어서 그냥 NA로 뜬다.

money=c("9,123.3","123.3$","123.3원")
as.numeric(gsub(pattern="[^0-9.]", replacement="",money))
#"[^0-9]" <--정규표현식 (regular expression)으로 
#솟자와 마침표를 제외한 나머지 모두. 
#즉, 마침표를 제외한 나머지 모두를 제거(replacement="")
#replacement에 아무것도 없는것 보면 제거가 맞는것 같다.

library("ggplot2")
class(diamonds)
df=as.data.frame(diamonds)
class(df)
head(df)


#데이터 피보팅
#피보팅: 주어진 데이터의 통계분석, 머신러닝,시각화 함수 사용을 위해 적용하는 방법 중 하나
install.packages("reshape2")
library("reshape2")
set.seed(123) #내 기억에 이게 난수 고정으로 기억하고 있음
df=data.frame(
              A=sample(10:99, size = 4),
              B=sample(10:99, size = 4),
              C=sample(10:99, size = 4)) #Obs는 해당 행과 열을 맞춰서 써야 하는것 같다.
                                         #왜 필요한건지 잘 모르겠음
                                         #Obs는 순번을 써주는거다 1열에 들어가는 
#sample: 단순임의 추출(simple random sampling)

