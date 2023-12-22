data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_cosmosdb_account" "this" {
  name                = var.cosmosdb_account_name
  resource_group_name = var.cosmosdb_account_resource_group_name == null ? null : var.cosmosdb_account_resource_group_name
}
data "azurerm_cosmosdb_sql_database" "this" {
  name                = var.cosmosdb_sql_database_name
  resource_group_name = var.cosmosdb_sql_database_resource_group_name == null ? null : var.cosmosdb_sql_database_resource_group_name
  account_name        = var.cosmosdb_sql_database_account_name == null ? null : var.cosmosdb_sql_database_account_name
}


resource "azurerm_cosmosdb_sql_stored_procedure" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  account_name        = data.azurerm_cosmosdb_account.this.name
  database_name       = data.azurerm_cosmosdb_sql_database.this.name
  container_name      = var.container_name
  body                = var.body
}
