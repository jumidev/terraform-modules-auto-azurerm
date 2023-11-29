

resource "azurerm_machine_learning_datastore_fileshare" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  workspace_id         = var.workspace_id
  storage_fileshare_id = var.storage_fileshare_id

  ########################################
  # optional vars
  ########################################
  account_key             = var.account_key
  shared_access_signature = var.shared_access_signature
  description             = var.description
  service_data_identity   = var.service_data_identity # Default: None
  tags                    = var.tags
}
