

resource "azurerm_data_factory_linked_custom_service" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  data_factory_id      = var.data_factory_id
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
