suits<-c("di","cl","he","sp")
numbers<-(1:13)

deck<-expand.grid(number=numbers,suit=suits)

#deck<-paste(deck$number,deck$suit)

kings<-paste("13",suits)

mean(deck %in% kings)

hands<-permutations(52,2,v=deck)


card1<-hands[,1]
card2<-hands[,2]


facecard<-expand.grid(number=10:13,suit=suits)
facecard<-paste(facecard$number,facecard$suit)

hands2<-combinations(52,2,v=deck)

mean(hands2[,1] %in% paste("1",suits) & hands2[,2] %in% facecard)
