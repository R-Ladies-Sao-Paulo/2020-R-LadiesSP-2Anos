library(googlesheets4)
library(janitor)

rladies_participantes_raw <-
  googlesheets4::read_sheet(
    "https://docs.google.com/spreadsheets/d/1S1P0ZEGiHKW8pzZguIIAQCXdYcmRA5YNiqJEtKeu9fc/edit#gid=866902112"
  )

rladies_participantes <-
  rladies_participantes_raw %>%
  janitor::clean_names() %>%
  dplyr::distinct(qual_e_seu_nome, .keep_all = TRUE)



sample_n(rladies_participantes, 1) %>%
  select(carimbo_de_data_hora, qual_e_seu_nome)


# Pessoa ganhadora!
# 2020-09-05 20:58:51  Karina Braga Ribeiro
