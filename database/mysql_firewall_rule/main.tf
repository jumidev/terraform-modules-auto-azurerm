data "azurerm_mysql_server" "this" {
  name                = var.mysql_server_name
  resource_group_name = var.mysql_server_resource_group_name == null ? null : var.mysql_server_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_mysql_firewall_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  server_name         = data.azurerm_mysql_server.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  start_ip_address    = var.start_ip_address
  end_ip_address      = var.end_ip_address
}
