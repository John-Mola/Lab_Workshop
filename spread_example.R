require(tidyr) #or could load tidyverse
require(dplyr)

df <- expand.grid(
  row = paste("r", 1:3, sep = ""),
  col = paste("c", 1:4, sep = "")   
) %>% mutate(
  value = paste0(rep(1:3, each = 4), 1:4)
) %>%
  sample_n(10)

df # tidy data, in long format

df %>% spread(col, value, fill = 0, drop = 0) # wide format, missing values filled in with 0
