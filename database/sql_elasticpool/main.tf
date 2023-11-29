data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_sql_server" "this" {
  name                = var.sql_server_name
  resource_group_name = var.sql_server_resource_group_name == null ? null : var.sql_server_resource_group_name
}


resource "azurerm_sql_elasticpool" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  server_name         = data.azurerm_sql_server.this.name
  edition             = var.edition
  dtu                 = var.dtu

  ########################################
  # optional vars
  ########################################
  db_dtu_min = var.db_dtu_min
  db_dtu_max = var.db_dtu_max
  pool_size  = var.pool_size
  tags       = var.tags
}
