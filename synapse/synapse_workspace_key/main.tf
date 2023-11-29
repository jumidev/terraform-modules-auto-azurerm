

resource "azurerm_synapse_workspace_key" "this" {

  ########################################
  # required vars
  ########################################
  customer_managed_key_name = var.customer_managed_key_name
  synapse_workspace_id      = var.synapse_workspace_id
  active                    = var.active

  ########################################
  # optional vars
  ########################################
  customer_managed_key_versionless_id = var.customer_managed_key_versionless_id
}
