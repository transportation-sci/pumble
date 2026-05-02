#' Send a message to a channel
#' @param text Message content
#' @param channel_id Optional ID
#' @param channel_name Optional Name (if ID not provided)
#' @param as_bot Logical, send as bot?
#' @export
pumble_send_message <- function(text, channel_id = NULL, channel_name = NULL, as_bot = FALSE) {
  body <- list(
    text = text,
    channelId = channel_id,
    channel = channel_name,
    asBot = as_bot
  )

  pumble_request("sendMessage", method = "POST") |>
    req_body_json(compact(body)) |>
    pumble_perform()
}

#' Send a direct message to a user
#' @param text Message content
#' @param user_id User ID
#' @param email User email (if ID not provided)
#' @export
pumble_dm_user <- function(text, user_id = NULL, email = NULL) {
  body <- list(text = text, userId = user_id, email = email)

  pumble_request("dmUser", method = "POST") |>
    req_body_json(compact(body)) |>
    pumble_perform()
}

#' Fetch message history in a channel
#'
#' @param channel_id Optional ID
#' @param channel_name Optional Name (if ID not provided)
#' @param limit Default is 20
#'
#' @export
pumble_list_messages <- function(channel_id = NULL, channel_name = NULL, limit = 20) {
  pumble_request("listMessages") |>
    req_url_query(
      channelId = channel_id,
      channel = channel_name,
      limit = limit
    ) |>
    pumble_perform()
}
