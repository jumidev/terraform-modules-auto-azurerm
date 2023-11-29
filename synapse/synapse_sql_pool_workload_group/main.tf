

resource "azurerm_synapse_sql_pool_workload_group" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  sql_pool_id          = var.sql_pool_id
  max_resource_percent = var.max_resource_percent
  min_resource_percent = var.min_resource_percent

  ########################################
  # optional vars
  ########################################
  importance                         = var.importance                       # Default: normal
  max_resource_percent_per_request   = var.max_resource_percent_per_request # Default: 3
  min_resource_percent_per_request   = var.min_resource_percent_per_request
  query_execution_timeout_in_seconds = var.query_execution_timeout_in_seconds
}
