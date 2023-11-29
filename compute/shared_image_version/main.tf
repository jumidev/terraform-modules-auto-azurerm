data "azurerm_shared_image_gallery" "this" {
  name                = var.shared_image_gallery_name
  resource_group_name = var.shared_image_gallery_resource_group_name != null ? var.shared_image_gallery_resource_group_name : var.resource_group_name

}
data "azurerm_image" "this" {
  name                = var.image_name
  name_regex          = var.image_name_regex
  sort_descending     = var.image_sort_descending
  resource_group_name = var.image_resource_group_name != null ? var.image_resource_group_name : var.resource_group_name

}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_shared_image_version" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  gallery_name        = data.azurerm_shared_image_gallery.this.name
  image_name          = data.azurerm_image.this.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name
  target_region       = var.target_region

  ########################################
  # optional vars
  ########################################
  blob_uri                                 = var.blob_uri
  end_of_life_date                         = var.end_of_life_date
  exclude_from_latest                      = var.exclude_from_latest # Default: False
  managed_image_id                         = var.managed_image_id
  os_disk_snapshot_id                      = var.os_disk_snapshot_id
  deletion_of_replicated_locations_enabled = var.deletion_of_replicated_locations_enabled # Default: False
  replication_mode                         = var.replication_mode                         # Default: Full
  storage_account_id                       = var.storage_account_id
  tags                                     = var.tags
}
