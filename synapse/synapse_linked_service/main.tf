

resource "azurerm_synapse_linked_service" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  synapse_workspace_id = var.synapse_workspace_id
  type                 = var.type
  type_properties_json = var.type_properties_json

  ########################################
  # optional vars
  ########################################
  additional_properties = var.additional_properties
  annotations           = var.annotations
  description           = var.description

  dynamic "integration_runtime" { # var.integration_runtime
    for_each = var.integration_runtime != null ? var.integration_runtime : []
    content {
      name       = integration_runtime.key
      parameters = lookup(integration_runtime.value, "parameters", null)
    }
  }

  parameters = var.parameters
}
