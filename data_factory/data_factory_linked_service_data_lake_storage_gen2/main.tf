

resource "azurerm_data_factory_linked_service_data_lake_storage_gen2" "this" {

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
  storage_account_key      = var.storage_account_key
  use_managed_identity     = var.use_managed_identity
  service_principal_id     = var.service_principal_id
  service_principal_key    = var.service_principal_key
  tenant                   = var.tenant
}
