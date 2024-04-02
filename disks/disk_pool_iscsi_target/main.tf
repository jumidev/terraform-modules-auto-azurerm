

resource "azurerm_disk_pool_iscsi_target" "this" {

  ########################################
  # required vars
  ########################################
  acl_mode      = var.acl_mode
  disks_pool_id = var.disks_pool_id
  name          = var.name

  ########################################
  # optional vars
  ########################################
  target_iqn = var.target_iqn
}
