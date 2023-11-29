

resource "azurerm_cosmosdb_postgresql_role" "this" {

  ########################################
  # required vars
  ########################################
  name       = var.name
  cluster_id = var.cluster_id
  password   = var.password
}
