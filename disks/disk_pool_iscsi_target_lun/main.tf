

resource "azurerm_disk_pool_iscsi_target_lun" "this" {

  ########################################
  # required vars
  ########################################
  iscsi_target_id                      = var.iscsi_target_id
  disk_pool_managed_disk_attachment_id = var.disk_pool_managed_disk_attachment_id
  name                                 = var.name
}
