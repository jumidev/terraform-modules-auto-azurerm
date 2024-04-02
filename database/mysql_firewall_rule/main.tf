

resource "azurerm_mysql_firewall_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  server_name         = var.server_name
  resource_group_name = var.resource_group_name
  start_ip_address    = var.start_ip_address
  end_ip_address      = var.end_ip_address
}
