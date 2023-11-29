

resource "azurerm_api_management_tag" "this" {

  ########################################
  # required vars
  ########################################
  api_management_id = var.api_management_id
  name              = var.name

  ########################################
  # optional vars
  ########################################
  display_name = var.display_name # Default: name
}
