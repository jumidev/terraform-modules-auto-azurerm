

resource "azurerm_cosmosdb_postgresql_coordinator_configuration" "this" {

  ########################################
  # required vars
  ########################################
  name       = var.name
  cluster_id = var.cluster_id
  value      = var.value
}
