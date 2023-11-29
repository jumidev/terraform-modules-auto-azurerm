

resource "azurerm_api_management_api_tag" "this" {

  ########################################
  # required vars
  ########################################
  api_id = var.api_id
  name   = var.name
}
