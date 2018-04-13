library(rvest)
url <- 'http://www.imdb.com/search/title?count=100&release_date=2017,2017&title_type=feature'
webpage <- read_html(url)
# ��CSSѡ������ȡ��������
rank_data_html <- html_nodes(webpage,'.text-primary')
# ������ת��Ϊ�ı�
rank_data <- html_text(rank_data_html)
# ����Ԥ������������ת��Ϊ��ֵ��
rank_data<-as.numeric(rank_data)
# ���һ������
head(rank_data)
# ��ȡ����
title_data_html <- html_nodes(webpage,'.lister-item-header a')

# ת��Ϊ�ı�
title_data <- html_text(title_data_html)

# ���һ��
head(title_data)
# ��ȡ����
description_data_html <- html_nodes(webpage,'.ratings-bar+ .text-muted')

# תΪ�ı�
description_data <- html_text(description_data_html)

# ���һ��
head(description_data)
# �Ƴ� '\n'
description_data<-gsub("\n","",description_data)

# �ټ��һ��
head(description_data)
# ��ȡruntime section
runtime_data_html <- html_nodes(webpage,'.text-muted .runtime')

# תΪ�ı�
runtime_data <- html_text(runtime_data_html)

# ���һ��
head(runtime_data)
# ����Ԥ����: ȥ����min����������ת��Ϊ��ֵ��

runtime_data <- gsub(" min","",runtime_data)
runtime_data <- as.numeric(runtime_data)

# �ټ��һ��
head(rank_data)
# ��ȡgenre
genre_data_html <- html_nodes(webpage,'.genre')

# תΪ�ı�
genre_data <- html_text(genre_data_html)

# ���һ��
head(genre_data)

# ȥ����\n��
genre_data<-gsub("\n","",genre_data)

# ȥ������ո�
genre_data<-gsub(" ","",genre_data)

# ÿ����Ӱֻ������һ������
genre_data<-gsub(",.*","",genre_data)

# ת��Ϊ����
genre_data<-as.factor(genre_data)

# �ټ��һ��
head(genre_data)
# ��ȡIMDB rating
rating_data_html <- html_nodes(webpage,'.ratings-imdb-rating strong')

# תΪ�ı�
rating_data <- html_text(rating_data_html)

# ���һ��
head(rating_data)
# ��ȡvotes section
votes_data_html <- html_nodes(webpage,'.sort-num_votes-visible span:nth-child(2)')

# תΪ�ı�
votes_data <- html_text(votes_data_html)

# ���һ��
head(votes_data)
# �Ƴ�������
votes_data<-gsub(",", "", votes_data)

# תΪ��ֵ��
votes_data<-as.numeric(votes_data)

# �ټ��һ��
head(votes_data)
# ��ȡdirectors section
directors_data_html <- html_nodes(webpage,'.text-muted+ p a:nth-child(1)')

# תΪ�ı�
directors_data <- html_text(directors_data_html)

# ���һ��
head(directors_data)
# תΪ����
directors_data<-as.factor(directors_data)

# ��ȡactors section
actors_data_html <- html_nodes(webpage,'.lister-item-content .ghost+ a')

# תΪ�ı�
actors_data <- html_text(actors_data_html)

# ���һ��
head(actors_data)
# תΪ����
actors_data<-as.factor(actors_data)

# ��ȡmetascore section
metascore_data_html <- html_nodes(webpage,'.metascore')

# תΪ�ı�
metascore_data <- html_text(metascore_data_html)

# ���һ��
head(metascore_data)
# ȥ������ո�
metascore_data<-gsub(" ","",metascore_data)

# ���metascore data�ĳ���
length(metascore_data)

