# SORTEIO!
library(tidyverse)
library(janitor)
library(googlesheets4)

# essa é a URL da tabela que usamos de lista de presença
# e também do sorteio :)
url_tabela <- "https://docs.google.com/spreadsheets/d/1D1Xgzq9A-aat_ZAf2D3vwdAeQu4uATmYG7bOblkajdQ/edit?resourcekey#gid=2130261279"


# aqui é necessário fazer a autenticação com o google sheets
respostas <- read_sheet(url_tabela) |>
  clean_names()

# bolsas curso-r (3 BOLSAS)
respostas |>
  filter(bolsa_no_curso_r_para_ciencia_de_dados_da_curso_r_em_2023 == "Sim") |>
  sample_n(1)

# livro: como mentir com estatística

respostas |>
  filter(livro_como_mentir_com_estatistica == "Sim") |>
  sample_n(1)

# livro: Storytelling com dados

respostas |>
  filter(livro_storytelling_com_dados == "Sim") |>
  sample_n(1)

# camiseta R-Ladies

respostas |>
  filter(camiseta_da_r_ladies_sp == "Sim") |>
  sample_n(1)
