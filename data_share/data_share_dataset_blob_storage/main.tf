

resource "azurerm_data_share_dataset_blob_storage" "this" {

  ########################################
  # required vars
  ########################################
  name           = var.name
  data_share_id  = var.data_share_id
  container_name = var.container_name

  storage_account {
    name                = lookup(storage_account.value, "name")                # (Required) 
    resource_group_name = lookup(storage_account.value, "resource_group_name") # (Required) 
    subscription_id     = lookup(storage_account.value, "subscription_id")     # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  file_path   = var.file_path
  folder_path = var.folder_path
}
