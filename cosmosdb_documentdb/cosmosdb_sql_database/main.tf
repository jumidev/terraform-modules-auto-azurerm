

resource "azurerm_cosmosdb_sql_database" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  account_name        = var.account_name

  ########################################
  # optional vars
  ########################################
  throughput = var.throughput

  dynamic "autoscale_settings" { # var.autoscale_settings
    for_each = var.autoscale_settings != null ? var.autoscale_settings : []
    content {
      max_throughput = lookup(autoscale_settings.value, "max_throughput", null)
    }
  }

}

##############################################################################################
# optional azurerm_spring_cloud_app_cosmosdb_association 
##############################################################################################
resource "azurerm_spring_cloud_app_cosmosdb_association" "this" {
  count                            = var.spring_cloud_app_cosmosdb_association != null ? 1 : 0
  name                             = lookup(var.spring_cloud_app_cosmosdb_association, "name")
  spring_cloud_app_id              = lookup(var.spring_cloud_app_cosmosdb_association, "spring_cloud_app_id")
  cosmosdb_account_id              = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_account_id")
  api_type                         = lookup(var.spring_cloud_app_cosmosdb_association, "api_type")
  cosmosdb_access_key              = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_access_key")
  cosmosdb_cassandra_keyspace_name = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_cassandra_keyspace_name", null)
  cosmosdb_gremlin_database_name   = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_gremlin_database_name", null)
  cosmosdb_gremlin_graph_name      = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_gremlin_graph_name", null)
  cosmosdb_mongo_database_name     = lookup(var.spring_cloud_app_cosmosdb_association, "cosmosdb_mongo_database_name", null)
  cosmosdb_sql_database_name       = azurerm_cosmosdb_sql_database.this.name
}
