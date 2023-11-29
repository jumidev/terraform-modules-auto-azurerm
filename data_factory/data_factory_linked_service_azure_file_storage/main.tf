

resource "azurerm_data_factory_linked_service_azure_file_storage" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  data_factory_id   = var.data_factory_id
  connection_string = var.connection_string

  ########################################
  # optional vars
  ########################################
  description              = var.description
  host                     = var.host
  integration_runtime_name = var.integration_runtime_name
  annotations              = var.annotations
  parameters               = var.parameters
  password                 = var.password
  user_id                  = var.user_id
  additional_properties    = var.additional_properties
  file_share               = var.file_share

  dynamic "key_vault_password" { # var.key_vault_password
    for_each = var.key_vault_password != null ? var.key_vault_password : []
    content {
      linked_service_name = lookup(key_vault_password.value, "linked_service_name") # (Required) 
      secret_name         = lookup(key_vault_password.value, "secret_name")         # (Required) 
    }
  }

}
