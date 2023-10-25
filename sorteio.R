# SORTEIO!
library(tidyverse)
library(janitor)
library(googlesheets4)

# essa é a URL da tabela que usamos de lista de presença
# e também do sorteio :)
url_tabela <- ""


respostas <- read_sheet(url_tabela) |>
  clean_names()

# bolsas curso-r (3 BOLSAS)
respostas |>
  filter(x1_bolsa_em_qualquer_curso_da_curso_r_em_2023 == "Sim") |>
  sample_n(3)

# livro: como mentir com estatística

# livro: ...

# camiseta R-Ladies
