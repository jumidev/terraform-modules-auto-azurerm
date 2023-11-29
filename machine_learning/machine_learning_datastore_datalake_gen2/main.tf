

resource "azurerm_machine_learning_datastore_datalake_gen2" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  workspace_id         = var.workspace_id
  storage_container_id = var.storage_container_id

  ########################################
  # optional vars
  ########################################
  tenant_id             = var.tenant_id
  client_id             = var.client_id
  client_secret         = var.client_secret
  authority_url         = var.authority_url
  description           = var.description
  service_data_identity = var.service_data_identity # Default: None
  tags                  = var.tags
}
