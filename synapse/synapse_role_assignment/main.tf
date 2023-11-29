

resource "azurerm_synapse_role_assignment" "this" {

  ########################################
  # required vars
  ########################################
  role_name    = var.role_name
  principal_id = var.principal_id

  ########################################
  # optional vars
  ########################################
  synapse_workspace_id  = var.synapse_workspace_id
  synapse_spark_pool_id = var.synapse_spark_pool_id
}
