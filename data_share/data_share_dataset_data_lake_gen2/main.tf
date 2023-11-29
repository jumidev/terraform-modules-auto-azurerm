

resource "azurerm_data_share_dataset_data_lake_gen2" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  share_id           = var.share_id
  file_system_name   = var.file_system_name
  storage_account_id = var.storage_account_id

  ########################################
  # optional vars
  ########################################
  file_path   = var.file_path
  folder_path = var.folder_path
}
