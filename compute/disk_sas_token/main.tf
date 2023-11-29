

resource "azurerm_disk_sas_token" "this" {

  ########################################
  # required vars
  ########################################
  managed_disk_id     = var.managed_disk_id
  duration_in_seconds = var.duration_in_seconds
  access_level        = var.access_level
}
