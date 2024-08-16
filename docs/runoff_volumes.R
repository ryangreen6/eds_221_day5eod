

library(tidyverse)
library(here)


source(here::here("src", "storm_runoff.R"))

impervious <- (seq(from=0.6, to=0.8, by=0.01))
runoff_matrix <- matrix(nrow=length(impervious))

prediction <- predict_runoff(impervious, 182)

runoff_df <- data.frame(impervious, prediction)

ggplot(data=runoff_df, aes(x=prediction, y=impervious)) + geom_point() + geom_line()

ggsave(here::here("figs", "stormwaterrunoff.png"))


