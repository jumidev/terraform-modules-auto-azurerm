

resource "azurerm_data_factory_linked_service_azure_sql_database" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  data_factory_id = var.data_factory_id

  ########################################
  # optional vars
  ########################################
  connection_string        = var.connection_string
  use_managed_identity     = var.use_managed_identity
  service_principal_id     = var.service_principal_id
  service_principal_key    = var.service_principal_key
  tenant_id                = var.tenant_id
  description              = var.description
  integration_runtime_name = var.integration_runtime_name
  annotations              = var.annotations
  parameters               = var.parameters
  additional_properties    = var.additional_properties

  dynamic "key_vault_connection_string" { # var.key_vault_connection_string
    for_each = var.key_vault_connection_string != null ? var.key_vault_connection_string : []
    content {
      linked_service_name = lookup(key_vault_connection_string.value, "linked_service_name") # (Required) 
      secret_name         = lookup(key_vault_connection_string.value, "secret_name")         # (Required) 
    }
  }


  dynamic "key_vault_password" { # var.key_vault_password
    for_each = var.key_vault_password != null ? var.key_vault_password : []
    content {
      linked_service_name = lookup(key_vault_password.value, "linked_service_name") # (Required) 
      secret_name         = lookup(key_vault_password.value, "secret_name")         # (Required) 
    }
  }

}
