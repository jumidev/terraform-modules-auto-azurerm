

resource "azurerm_cosmosdb_postgresql_node_configuration" "this" {

  ########################################
  # required vars
  ########################################
  name       = var.name
  cluster_id = var.cluster_id
  value      = var.value
}
