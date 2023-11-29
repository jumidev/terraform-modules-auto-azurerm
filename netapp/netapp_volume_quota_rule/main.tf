

resource "azurerm_netapp_volume_quota_rule" "this" {

  ########################################
  # required vars
  ########################################
  location          = var.location
  name              = var.name
  volume_id         = var.volume_id
  quota_size_in_kib = var.quota_size_in_kib
  quota_type        = var.quota_type

  ########################################
  # optional vars
  ########################################
  quota_target = var.quota_target
}
