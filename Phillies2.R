library("rvest")
url <- "https://questionnaire-148920.appspot.com/swe/"

# scrape data
data <- url %>%
  read_html() %>%
  html_nodes(xpath = '//*[@id="salaries-table"]') %>%
  html_table()
data <- data[[1]]

names(data) <- c("Player","Salary")

# extract numeric value of salaries, ignoring $, commas, and text
data$Salary <- as.numeric(gsub('\\D','',data$Salary)) 

library(dplyr)

#takes top 125 salaries, not top 125 players
top125 <- top_n(data, 125, Salary)
mean(top125$Salary)