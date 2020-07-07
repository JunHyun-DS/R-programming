setwd('D:\\R\\dplyr')
source('score_data.R')

library(dplyr)

score = score_data()

colnames(score) # "name", "sex", "urban", "lang", "math", "scie", "study_time"

test = test_data()
name = test$name
test1 = test$test1
test2 = test$test2

## group_by(): 그룹 별 
score %>% 
  group_by(sex) %>%
  summarize(avg_scie = mean(scie, na.rm=T),
            avg_lang = mean(lang, na.rm=T),
            avg_math = mean(math, na.rm=T))

## join(data1, data2, Primary Key) ex) inner, left, right ...

# inner join (PK=PK인 데이터만 남김)
inner_join(name, test1, by='class')

## 왼쪽 데이터 기준으로 다 남기고 PK != PK인 경우 NA값으로 지정 
# name 데이터의 class가 1,2,3,4,5인 데이터는 다남기고 4,5는 맵핑되는게 없기 떄문에 NA값으로 지정
left_join(name, test1, by='class')

## 우측 데이터 기준으로 다 남기고 PK != PK인 경우 NA값으로 지정 
# test1데이터의 class가 1,2,3인 데이터는 다 남기고, 좌측 데이터가 맵핑이 안되도 우측 데이터 기준이어서 좌측의 class 4,5는 삭제  
right_join(name, test1, by='class')
