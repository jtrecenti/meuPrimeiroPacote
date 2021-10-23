## code to prepare `DATASET` dataset goes here


olist_products <- readr::read_csv("data-raw/olist_products_dataset.csv") |>
  dplyr::mutate(product_category_name = factor(product_category_name))

dplyr::glimpse(olist_products)

usethis::use_data(olist_products, overwrite = TRUE)
