

resource "azurerm_synapse_sql_pool_workload_classifier" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  workload_group_id = var.workload_group_id
  member_name       = var.member_name

  ########################################
  # optional vars
  ########################################
  context    = var.context
  end_time   = var.end_time
  importance = var.importance
  label      = var.label
  start_time = var.start_time
}
