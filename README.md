
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pumble

<!-- badges: start -->

<!-- badges: end -->

<img src="man/figures/logo.png" align="right" height="139" alt="" />

{pumble} is an R package that uses Pumble’s API to interact with Pumble
workspace. It can be used to send messages to and get user info. from
Pumble workspace.

## Installation

You can install the development version of pumble from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("transportation-sci/pumble")
```

## Example

Here’s how to send a message to a channel:

``` r
library(pumble)

# Get channel ID:
channels_list_df <- pumble_list_channels()
channel_name <- "book_club_traffic_flow_dynamics"
channel_id <- channels_list_df$channel |> 
  dplyr::filter(name == channel_name) |> 
  dplyr::pull(id)

# Send message:
pumble_send_message(
  text = "Test Message", 
  channel_id = channel_id, 
  as_bot = TRUE
)
```
