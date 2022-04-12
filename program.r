install.packages("plotly")
install.packages("readr")

library("plotly")
library("readr")

slums_v4 <- read_csv("~/slums_v4/slums_v4.csv")

CNT <- slums_v4[[3]]
POP <- slums_v4[[9]]
YEAR <- slums_v4[[10]]
GPW20 <- slums_v4[[11]]
hrsl18 <- hrsl18[[14]]



plot_ly(data = slums_v4,
        x = ~CNT, y = ~POP, color = ~YEAR,
        size = ~POP,
        type = "scatter",
        text = ~paste("GPW20: ", GPW20,
        '<br>KYC POP:', POP,
        '<br>hrsl18:', hrsl18,
        '<br>Year:', YEAR))

