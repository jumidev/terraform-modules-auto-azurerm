

resource "azurerm_synapse_integration_runtime_self_hosted" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  synapse_workspace_id = var.synapse_workspace_id

  ########################################
  # optional vars
  ########################################
  description = var.description
}
