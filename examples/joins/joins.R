library(tidyverse)

roster <- read_csv(here::here("joins", "data/roster.csv"))
roster

scores <- read_csv(here::here("joins", "data/scores.csv"))
scores

# with AI

roster %>%
  left_join(scores, by = "id", relationship = "one-to-many")

# without AI

roster |>
  left_join(scores, join_by(id))

roster |> slice(21)
scores |> filter(id == 21)

scores |> slice(54)
roster |> filter(id == 51)
