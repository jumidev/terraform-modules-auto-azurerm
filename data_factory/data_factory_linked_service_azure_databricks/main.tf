

resource "azurerm_data_factory_linked_service_azure_databricks" "this" {

  ########################################
  # required vars
  ########################################
  adb_domain      = var.adb_domain
  data_factory_id = var.data_factory_id
  name            = var.name

  ########################################
  # optional vars
  ########################################
  access_token = var.access_token

  dynamic "key_vault_password" { # var.key_vault_password
    for_each = var.key_vault_password != null ? var.key_vault_password : []
    content {
      linked_service_name = lookup(key_vault_password.value, "linked_service_name") # (Required) 
      secret_name         = lookup(key_vault_password.value, "secret_name")         # (Required) 
    }
  }

  msi_work_space_resource_id = var.msi_work_space_resource_id
  existing_cluster_id        = var.existing_cluster_id
  instance_pool              = var.instance_pool
  new_cluster_config         = var.new_cluster_config
  additional_properties      = var.additional_properties
  annotations                = var.annotations
  description                = var.description
  integration_runtime_name   = var.integration_runtime_name
  parameters                 = var.parameters
}
