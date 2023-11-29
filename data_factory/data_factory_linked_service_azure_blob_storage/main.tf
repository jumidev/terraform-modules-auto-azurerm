

resource "azurerm_data_factory_linked_service_azure_blob_storage" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  data_factory_id = var.data_factory_id

  ########################################
  # optional vars
  ########################################
  description                = var.description
  integration_runtime_name   = var.integration_runtime_name
  annotations                = var.annotations
  parameters                 = var.parameters
  additional_properties      = var.additional_properties
  connection_string          = var.connection_string
  connection_string_insecure = var.connection_string_insecure
  sas_uri                    = var.sas_uri

  dynamic "key_vault_sas_token" { # var.key_vault_sas_token
    for_each = var.key_vault_sas_token != null ? var.key_vault_sas_token : []
    content {
      linked_service_name = lookup(key_vault_sas_token.value, "linked_service_name") # (Required) 
      secret_name         = lookup(key_vault_sas_token.value, "secret_name")         # (Required) 

      dynamic "service_principal_linked_key_vault_key" { # key_vault_sas_token.value.service_principal_linked_key_vault_key
        for_each = key_vault_sas_token.value.service_principal_linked_key_vault_key != null ? key_vault_sas_token.value.service_principal_linked_key_vault_key : []
        content {
          linked_service_name   = lookup(service_principal_linked_key_vault_key.value, "linked_service_name") # (Required) 
          secret_name           = lookup(service_principal_linked_key_vault_key.value, "secret_name")         # (Required) 
          service_endpoint      = lookup(service_principal_linked_key_vault_key.value, "service_endpoint", null)
          use_managed_identity  = lookup(service_principal_linked_key_vault_key.value, "use_managed_identity", null)
          service_principal_id  = lookup(service_principal_linked_key_vault_key.value, "service_principal_id", null)
          service_principal_key = lookup(service_principal_linked_key_vault_key.value, "service_principal_key", null)
          storage_kind          = lookup(service_principal_linked_key_vault_key.value, "storage_kind", null)
          tenant_id             = lookup(service_principal_linked_key_vault_key.value, "tenant_id", null)
        }
      }

    }
  }

}
