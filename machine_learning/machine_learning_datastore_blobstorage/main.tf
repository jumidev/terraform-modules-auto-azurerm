

resource "azurerm_machine_learning_datastore_blobstorage" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  workspace_id         = var.workspace_id
  storage_container_id = var.storage_container_id

  ########################################
  # optional vars
  ########################################
  account_key                = var.account_key
  shared_access_signature    = var.shared_access_signature
  description                = var.description
  is_default                 = var.is_default                 # Default: False
  service_data_auth_identity = var.service_data_auth_identity # Default: None
  tags                       = var.tags
}
