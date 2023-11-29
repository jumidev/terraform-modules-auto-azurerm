

resource "azurerm_lighthouse_assignment" "this" {

  ########################################
  # required vars
  ########################################
  scope                    = var.scope
  lighthouse_definition_id = var.lighthouse_definition_id

  ########################################
  # optional vars
  ########################################
  name = var.name
}
