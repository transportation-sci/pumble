#' Get current user info
#' @export
pumble_my_info <- function() {
  pumble_request("myInfo") |>
    pumble_perform()
}

#' Update custom status
#' @param status Text status
#' @param emoji Emoji code (e.g., ":joy:")
#' @export
pumble_set_status <- function(status, emoji = NULL) {
  body <- list(status = status, code = emoji)
  pumble_request("customStatus", method = "POST") |>
    req_body_json(compact(body)) |>
    pumble_perform()
}
