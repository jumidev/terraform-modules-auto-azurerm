

resource "azurerm_maps_creator" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  maps_account_id = var.maps_account_id
  location        = var.location
  storage_units   = var.storage_units

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
