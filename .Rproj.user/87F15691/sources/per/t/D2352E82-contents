#' Schedule a message
#'
#' @param channel_id Optional ID
#' @param text Message content
#' @param send_at ISO8601 timestamp or POSIXct object
#'
#' @export
pumble_schedule_message <- function(channel_id, text, send_at) {
  # Ensure timestamp format
  if (inherits(send_at, "POSIXt")) {
    send_at <- format(send_at, "%Y-%m-%dT%H:%M:%OSZ")
  }

  pumble_request("createScheduledMessage", method = "POST") |>
    req_body_json(list(
      channelId = channel_id,
      text = text,
      sendAt = send_at
    )) |>
    pumble_perform()
}
