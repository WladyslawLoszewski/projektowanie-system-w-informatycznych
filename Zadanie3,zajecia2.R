text<- readLines(file.choose())
text

install.packages("wordcloud")
library(wordcloud)

install.packages("qdap")
library(qdap)

frequent_terms <- freq_terms(text)
frequent_terms

frequent_terms <- freq_terms(text, stopwords = Top200Words)
frequent_terms

wordcloud(frequent_terms$WORD, frequent_terms$FREQ)

wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4)

wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5)

install.packages("RColorBrewer")
library(RColorBrewer)

wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(8, "Dark2"))
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5, colors = brewer.pal(8, "Accent"))

wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9, "Blues"))
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9, "Reds"))
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9, "Greens"))

plot(frequent_terms)