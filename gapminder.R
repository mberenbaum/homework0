library(tidyverse)
library(dslabs)
data(gapminder)
head(gapminder)


gapminder_m <- gapminder %>%  mutate(gdp = gdp/1000000000000)

y1968<-filter(gapminder, year==1966)
gdp_1968<-mean(y1968$gdp,na.rm = TRUE)

y2015<-filter(gapminder, year==2015)
gdp_1968<-mean(y1968$gdp,na.rm = TRUE)

y1968 %>% ggplot( aes(fertility, life_expectancy, color = continent)) +
  geom_point(size=4)+xlim(0, 9)+ylim(30,90)

y2015%>% ggplot( aes(fertility, life_expectancy, color = continent)) +
  geom_point(size=4) +xlim(0, 9)+ylim(30,90)

filter(gapminder, year %in% c(1966,1976,1986,1996,2006,2015))%>% ggplot( aes(fertility, life_expectancy, color = continent)) +
  geom_point(size=4) +facet_wrap(~year)

ggplot(gapminder_m, aes(year, gdp, color = continent)) +
  geom_smooth()


ggplot(y1968,aes(country,gdp/population,fill=continent))+geom_col()

ggplot(y2014,aes(country,gdp/population,fill=continent))+geom_col()