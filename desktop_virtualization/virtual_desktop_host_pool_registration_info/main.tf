

resource "azurerm_virtual_desktop_host_pool_registration_info" "this" {

  ########################################
  # required vars
  ########################################
  expiration_date = var.expiration_date
  hostpool_id     = var.hostpool_id
}
