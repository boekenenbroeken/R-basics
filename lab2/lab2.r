install.packages("dplyr")
install.packages("ggplot2")
install.packages("ggplot")
update.packages()
library(dplyr) 
library(ggplot2)
library(ggplot)

movie_body_counts <- read.csv('desktop/filmdeathcounts.csv')

head(movie_body_counts)

str(movie_body_counts)

movie_body_counts$body_per_min <- movie_body_counts$Body_Count/movie_body_counts$Length_Minutes

ggplot(movie_body_counts, aes(x=Body_Count)) + geom_histogram(bins=20, color="grey", fill="lightblue")

movie_body_counts %>%
  top_n(n = 10, Body_Count) %>% arrange(desc(Body_Count))

movie_body_counts %>%
  top_n(n = 10, body_per_min) %>% arrange(desc(body_per_min))

ggplot(movie_body_counts, aes(x=IMDB_Rating)) + geom_histogram(bins=10, color="grey", fill="lightblue")

imbd_mean <- mean(movie_body_counts$IMDB_Rating)
imbd_mean
imdb_sd <-sqrt(var(movie_body_counts$IMDB_Rating))
imdb_sd

set.seed(900)
imdb_simulation <- rnorm(n=nrow(movie_body_counts), mean = imdb_mean, sd = imdb_sd)