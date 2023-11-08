if (!require(syuzhet)) {install.packages("syuzhet")}
## Loading required package: syuzhet

if (!require(ggplot2)) {install.packages("ggplot2")}
## Loading required package: ggplot2
if (!require(matrixStats)) {install.packages("matrixStats")}
## Loading required package: matrixStats
swiggy = readLines('C:\\Users\\virma\\OneDrive\\Desktop\\College\\data\\swiggy.txt')
sentiment <- get_nrc_sentiment((swiggy))
install.packages("syuzhet")
library(syuzhet)
sentiment <- get_nrc_sentiment((swiggy))
sentiment_scores <- data.frame(colMeans(sentiment[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data=sentiment_scores, aes(x=sentiment, y=Score)) +
  geom_bar(aes(fill=sentiment), stat = "identity") +
  theme(legend.position = "none")+
  ylim(0,1.2) +
  xlab("Sentiment Type") + ylab("Mean sentiment score") + ggtitle("Sentiments of people tweeting to Swiggy handle")
install.packages("ggplot2")
library(ggplot2)
ggplot(data=sentiment_scores, aes(x=sentiment, y=Score)) +
  geom_bar(aes(fill=sentiment), stat = "identity") +
  theme(legend.position = "none")+
  ylim(0,1.2) +
  xlab("Sentiment Type") + ylab("Mean sentiment score") + ggtitle("Sentiments of people tweeting to Swiggy handle")
install.packages("ggplot2")
library(ggplot2)
ggplot(data=sentiment_scores, aes(x=sentiment, y=Score)) +
  geom_bar(aes(fill=sentiment), stat = "identity") +
  theme(legend.position = "none")+
  ylim(0,1.2) +
  xlab("Sentiment Type") + ylab("Mean sentiment score") + ggtitle("Sentiments of people tweeting to Swiggy handle")
#zomato 
zomato = readLines("C:\\Users\\virma\\OneDrive\\Desktop\\College\\data\\zomato.txt")
sentiment <- get_nrc_sentiment((zomato))
sentiment_scores <- data.frame(colMeans(sentiment[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data=sentiment_scores, aes(x=sentiment, y=Score)) +
  geom_bar(aes(fill=sentiment), stat = "identity") +
  theme(legend.position = "none")+
  ylim(0,1.2) +
  xlab("Sentiment Type") + ylab("Mean sentiment score") + ggtitle("Sentiments of people tweeting to Zomato handle")

