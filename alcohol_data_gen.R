alcohol <- rnorm(100, mean = 250, sd = 100)
control <- rnorm(100, mean = 150, sd = 85)

alcohol[alcohol < 0] <- 0
control[control < 0] <- 0

data <- tibble::tibble(
  participant_id = 1:200,
  group = c(rep("alcohol", 100), rep("control", 100)),
  reaction_time = c(round(alcohol,2 ), round(control, 2))
)

writexl::write_xlsx(data, "alcohol_data.xlsx")
