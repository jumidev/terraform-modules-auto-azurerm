

resource "azurerm_api_management_policy" "this" {

  ########################################
  # required vars
  ########################################
  api_management_id = var.api_management_id

  ########################################
  # optional vars
  ########################################
  xml_content = var.xml_content
  xml_link    = var.xml_link
}
