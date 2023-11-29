

resource "azurerm_iothub_file_upload" "this" {

  ########################################
  # required vars
  ########################################
  iothub_id         = var.iothub_id
  connection_string = var.connection_string
  container_name    = var.container_name

  ########################################
  # optional vars
  ########################################
  authentication_type   = var.authentication_type # Default: keyBased
  default_ttl           = var.default_ttl         # Default: PT1H
  identity_id           = var.identity_id
  lock_duration         = var.lock_duration         # Default: PT1M
  max_delivery_count    = var.max_delivery_count    # Default: 10
  notifications_enabled = var.notifications_enabled # Default: False
  sas_ttl               = var.sas_ttl               # Default: PT1H
}
