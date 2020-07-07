setwd('D:\\R\\dplyr')
source('score_data.R')

library(dplyr)

score = score_data()

colnames(score) # "name", "sex", "urban", "lang", "math", "scie", "study_time"

## select(): 선택
# select(data, colnames)
select(score, lang, math, scie)

# select(data, -colnames)
select(score, -c(math, lang))

## filter(): 조건
filter(score, sex=='f' & urban==1)

## mutate(): 새로운 데이터 생성 
# mutate(data, newValue)
mutate(score, avg=(lang+math+scie)/3)
mutate(score, "NA"=ifelse(lang %in% NA | math %in% NA | scie %in% NA, 1,0))

## rename(): 변수 명 재정의 
# rename(data, after, before)
rename(score, studyTime = study_time)

## arange(): 정렬
# arrange(data, desc(colnames)): 내림차순
arrange(score, desc(math))

# arrange(data, colnames): 오름차순
arrange(score, (math))

## summarize(): 기술통계량
# summarize(data, data description)
summarize(score, N=nrow(score),
          avg_lang = mean(lang, na.rm=T),
          avg_math = mean(math, na.rm=T),
          avg_scie = mean(scie, na.rm=T))