#' Faz um gráfico
#'
#' Faz um grafico usando ggplot2
#'
#' @param dados base de dados
#' @param coluna coluna que eu quero visualizar
#'
#' @export
fazer_grafico <- function(dados, coluna) {

  if( class(dados[[coluna]]) == "numeric" ) {

    dados %>%
      ggplot2::ggplot() +
      ggplot2::aes(.data[[coluna]]) +
      ggplot2::geom_histogram()

  } else {
    dados %>%
      ggplot2::ggplot() +
      ggplot2::aes(.data[[coluna]]) +
      ggplot2::geom_bar()
  }


}
