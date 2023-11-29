

resource "azurerm_logic_app_action_custom" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  logic_app_id = var.logic_app_id
  body         = var.body
}
