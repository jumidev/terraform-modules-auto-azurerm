

resource "azurerm_lb_backend_address_pool_address" "this" {

  ########################################
  # required vars
  ########################################
  backend_address_pool_id = var.backend_address_pool_id
  name                    = var.name

  ########################################
  # optional vars
  ########################################
  ip_address                          = var.ip_address
  virtual_network_id                  = var.virtual_network_id
  backend_address_ip_configuration_id = var.backend_address_ip_configuration_id
}
