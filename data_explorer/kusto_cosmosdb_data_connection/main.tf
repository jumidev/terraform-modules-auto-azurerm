

resource "azurerm_kusto_cosmosdb_data_connection" "this" {

  ########################################
  # required vars
  ########################################
  cosmosdb_container_id = var.cosmosdb_container_id
  kusto_database_id     = var.kusto_database_id
  location              = var.location
  managed_identity_id   = var.managed_identity_id
  name                  = var.name
  table_name            = var.table_name

  ########################################
  # optional vars
  ########################################
  mapping_rule_name    = var.mapping_rule_name
  retrieval_start_date = var.retrieval_start_date
}
