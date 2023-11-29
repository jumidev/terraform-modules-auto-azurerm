

resource "azurerm_web_app_hybrid_connection" "this" {

  ########################################
  # required vars
  ########################################
  web_app_id = var.web_app_id
  relay_id   = var.relay_id
  hostname   = var.hostname
  port       = var.port

  ########################################
  # optional vars
  ########################################
  send_key_name = var.send_key_name # Default: RootManageSharedAccessKey
}
