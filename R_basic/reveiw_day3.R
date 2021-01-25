#세번째날 복습!!
#좀 늦은감이 없지않아 있지만....일단 그래도 해봐야지!!

news=read.csv("news_ecommerce_lda_k10.csv")
head(news, 2)

# Q1. news객체는 몇개의 언론사 뉴스 기사가 있는가?
length(unique(news$press))
nrow(news)

# Q2. 연도별 월별 뉴스기사 개수를 확인하시오.
for num in unique(news$year){
    count=nrow(news$year==num)
    paste(num,count)
}
