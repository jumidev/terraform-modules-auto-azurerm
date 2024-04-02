

resource "azurerm_mysql_configuration" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  server_name         = var.server_name
  resource_group_name = var.resource_group_name
  value               = var.value
}
