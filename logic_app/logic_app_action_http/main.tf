

resource "azurerm_logic_app_action_http" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  logic_app_id = var.logic_app_id
  method       = var.method
  uri          = var.uri

  ########################################
  # optional vars
  ########################################
  body      = var.body
  headers   = var.headers
  queries   = var.queries
  run_after = var.run_after
}
