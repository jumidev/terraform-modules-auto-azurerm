

resource "azurerm_sentinel_watchlist" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  log_analytics_workspace_id = var.log_analytics_workspace_id
  display_name               = var.display_name
  item_search_key            = var.item_search_key

  ########################################
  # optional vars
  ########################################
  default_duration = var.default_duration
  description      = var.description
  labels           = var.labels
}
