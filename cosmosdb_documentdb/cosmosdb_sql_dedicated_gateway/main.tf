

resource "azurerm_cosmosdb_sql_dedicated_gateway" "this" {

  ########################################
  # required vars
  ########################################
  cosmosdb_account_id = var.cosmosdb_account_id
  instance_size       = var.instance_size
  instance_count      = var.instance_count
}
