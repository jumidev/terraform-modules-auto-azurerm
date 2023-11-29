

resource "azurerm_cosmosdb_sql_function" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  container_id = var.container_id
  body         = var.body
}
