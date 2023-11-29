data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_sql_server" "this" {
  name                = var.sql_server_name
  resource_group_name = var.sql_server_resource_group_name == null ? null : var.sql_server_resource_group_name
}


resource "azurerm_sql_firewall_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  server_name         = data.azurerm_sql_server.this.name
  start_ip_address    = var.start_ip_address
  end_ip_address      = var.end_ip_address
}
