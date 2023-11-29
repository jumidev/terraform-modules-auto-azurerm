

resource "azurerm_synapse_integration_runtime_azure" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  synapse_workspace_id = var.synapse_workspace_id
  location             = var.location

  ########################################
  # optional vars
  ########################################
  compute_type     = var.compute_type # Default: General
  core_count       = var.core_count   # Default: 8
  description      = var.description
  time_to_live_min = var.time_to_live_min # Default: 0
}
