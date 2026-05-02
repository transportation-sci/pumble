#' @import httr2
#' @importFrom purrr compact
pumble_base_url <- "https://pumble-api-keys.addons.marketplace.cake.com"

pumble_request <- function(endpoint, method = "GET") {
  # Get API Key from environment variable for security
  api_key <- Sys.getenv("PUMBLE_API_KEY")

  if (api_key == "") {
    stop("Please set your Pumble API key using Sys.setenv(PUMBLE_API_KEY = 'your_key')")
  }

  request(pumble_base_url) |>
    req_url_path_append(endpoint) |>
    req_headers(ApiKey = api_key) |>
    req_method(method) |>
    req_error(is_error = function(resp) resp_status(resp) >= 400)
}

pumble_perform <- function(req) {
  req |>
    req_perform() |>
    resp_body_json(simplifyVector = TRUE)
}
