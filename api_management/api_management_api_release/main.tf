

resource "azurerm_api_management_api_release" "this" {

  ########################################
  # required vars
  ########################################
  name   = var.name
  api_id = var.api_id

  ########################################
  # optional vars
  ########################################
  notes = var.notes
}
