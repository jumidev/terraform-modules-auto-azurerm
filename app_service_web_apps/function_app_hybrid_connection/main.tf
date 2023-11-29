

resource "azurerm_function_app_hybrid_connection" "this" {

  ########################################
  # required vars
  ########################################
  function_app_id = var.function_app_id
  relay_id        = var.relay_id
  hostname        = var.hostname
  port            = var.port

  ########################################
  # optional vars
  ########################################
  send_key_name = var.send_key_name # Default: RootManageSharedAccessKey
}
