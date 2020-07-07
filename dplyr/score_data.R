score_data = function(){
    data.frame(
    name = c('Jim', 'Liz', 'Ted', 'Kay', 'Jun', 'Jay', 'May', "Sue"),
    sex = factor(c('m','f', 'm', 'f', 'm', 'm','m','f')),
    urban = factor(c(1,1,0,0,0,1,1,0)),
    lang = c(4,NA,3,3,4,5,3,3),
    math = c(5,3,4,3,5,4,4,NA),
    scie = c(3,3,4,3,2,4,3,NA),
    study_time = c(15,13,199,9,11,11,5,7)
  )
}

test_data = function(){
  list(name = data.frame(class=1:5, teacher=c('Kim','Byun','Lee','Park','Jung')),
       test1=data.frame(id= 1:5, midterm = c(60,80,70,90,85), class=c(1,1,1,2,3)),
       test2=data.frame(id=1:5, final = c(70,83,65,95,80), class=c(3,4,5,5,1)))
}