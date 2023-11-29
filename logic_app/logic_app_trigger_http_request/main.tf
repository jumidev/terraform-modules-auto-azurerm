

resource "azurerm_logic_app_trigger_http_request" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  logic_app_id = var.logic_app_id
  schema       = var.schema

  ########################################
  # optional vars
  ########################################
  method        = var.method
  relative_path = var.relative_path
}
