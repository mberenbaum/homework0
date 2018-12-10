ggplot(gapminder, aes(year, gdp/population,color=continent))+geom_smooth(
  #se = FALSE
  )