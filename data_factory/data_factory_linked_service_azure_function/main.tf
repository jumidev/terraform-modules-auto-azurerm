

resource "azurerm_data_factory_linked_service_azure_function" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  data_factory_id = var.data_factory_id
  url             = var.url

  ########################################
  # optional vars
  ########################################
  description              = var.description
  integration_runtime_name = var.integration_runtime_name
  annotations              = var.annotations
  parameters               = var.parameters
  additional_properties    = var.additional_properties
  key                      = var.key

  dynamic "key_vault_key" { # var.key_vault_key
    for_each = var.key_vault_key != null ? var.key_vault_key : []
    content {
      linked_service_name = lookup(key_vault_key.value, "linked_service_name") # (Required) 
      secret_name         = lookup(key_vault_key.value, "secret_name")         # (Required) 
    }
  }

}
