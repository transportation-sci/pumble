#' List all channels
#' @export
pumble_list_channels <- function() {
  pumble_request("listChannels") |>
    pumble_perform()
}

#' Create a new channel
#' @param name Channel name
#' @param type "public" or "private"
#' @param description Optional description
#' @export
pumble_create_channel <- function(name, type = "public", description = NULL) {
  body <- list(name = name, type = type, description = description)

  pumble_request("createChannel", method = "POST") |>
    req_body_json(compact(body)) |>
    pumble_perform()
}

#' Add users to a channel
#' @param channel_id The channel ID
#' @param user_ids Character vector of user IDs
#' @export
pumble_add_users <- function(channel_id, user_ids) {
  pumble_request("addUsersToChannel", method = "POST") |>
    req_body_json(list(channelId = channel_id, userIds = user_ids)) |>
    pumble_perform()
}
