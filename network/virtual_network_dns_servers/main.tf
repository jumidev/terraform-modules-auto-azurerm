

resource "azurerm_virtual_network_dns_servers" "this" {

  ########################################
  # required vars
  ########################################
  virtual_network_id = var.virtual_network_id

  ########################################
  # optional vars
  ########################################
  dns_servers = var.dns_servers
}
