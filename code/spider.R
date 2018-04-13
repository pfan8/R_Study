library(rvest)
url <- 'http://www.imdb.com/search/title?count=100&release_date=2017,2017&title_type=feature'
webpage <- read_html(url)
# 用CSS选择器获取排名部分
rank_data_html <- html_nodes(webpage,'.text-primary')
# 把排名转换为文本
rank_data <- html_text(rank_data_html)
# 数据预处理：把排名转换为数值型
rank_data<-as.numeric(rank_data)
# 检查一下数据
head(rank_data)
# 爬取标题
title_data_html <- html_nodes(webpage,'.lister-item-header a')

# 转换为文本
title_data <- html_text(title_data_html)

# 检查一下
head(title_data)
# 爬取描述
description_data_html <- html_nodes(webpage,'.ratings-bar+ .text-muted')

# 转为文本
description_data <- html_text(description_data_html)

# 检查一下
head(description_data)
# 移除 '\n'
description_data<-gsub("\n","",description_data)

# 再检查一下
head(description_data)
# 爬取runtime section
runtime_data_html <- html_nodes(webpage,'.text-muted .runtime')

# 转为文本
runtime_data <- html_text(runtime_data_html)

# 检查一下
head(runtime_data)
# 数据预处理: 去除“min”并把数字转换为数值型

runtime_data <- gsub(" min","",runtime_data)
runtime_data <- as.numeric(runtime_data)

# 再检查一下
head(rank_data)
# 爬取genre
genre_data_html <- html_nodes(webpage,'.genre')

# 转为文本
genre_data <- html_text(genre_data_html)

# 检查一下
head(genre_data)

# 去除“\n”
genre_data<-gsub("\n","",genre_data)

# 去除多余空格
genre_data<-gsub(" ","",genre_data)

# 每部电影只保留第一种类型
genre_data<-gsub(",.*","",genre_data)

# 转化为因子
genre_data<-as.factor(genre_data)

# 再检查一下
head(genre_data)
# 爬取IMDB rating
rating_data_html <- html_nodes(webpage,'.ratings-imdb-rating strong')

# 转为文本
rating_data <- html_text(rating_data_html)

# 检查一下
head(rating_data)
# 爬取votes section
votes_data_html <- html_nodes(webpage,'.sort-num_votes-visible span:nth-child(2)')

# 转为文本
votes_data <- html_text(votes_data_html)

# 检查一下
head(votes_data)
# 移除“，”
votes_data<-gsub(",", "", votes_data)

# 转为数值型
votes_data<-as.numeric(votes_data)

# 再检查一下
head(votes_data)
# 爬取directors section
directors_data_html <- html_nodes(webpage,'.text-muted+ p a:nth-child(1)')

# 转为文本
directors_data <- html_text(directors_data_html)

# 检查一下
head(directors_data)
# 转为因子
directors_data<-as.factor(directors_data)

# 爬取actors section
actors_data_html <- html_nodes(webpage,'.lister-item-content .ghost+ a')

# 转为文本
actors_data <- html_text(actors_data_html)

# 检查一下
head(actors_data)
# 转为因子
actors_data<-as.factor(actors_data)

# 爬取metascore section
metascore_data_html <- html_nodes(webpage,'.metascore')

# 转为文本
metascore_data <- html_text(metascore_data_html)

# 检查一下
head(metascore_data)
# 去除多余空格
metascore_data<-gsub(" ","",metascore_data)

# 检查metascore data的长度
length(metascore_data)


