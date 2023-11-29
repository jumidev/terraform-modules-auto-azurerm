

resource "azurerm_sentinel_watchlist_item" "this" {

  ########################################
  # required vars
  ########################################
  watchlist_id = var.watchlist_id
  properties   = var.properties

  ########################################
  # optional vars
  ########################################
  name = var.name
}
