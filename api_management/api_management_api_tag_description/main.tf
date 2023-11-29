

resource "azurerm_api_management_api_tag_description" "this" {

  ########################################
  # required vars
  ########################################
  api_tag_id = var.api_tag_id

  ########################################
  # optional vars
  ########################################
  description                        = var.description
  external_documentation_url         = var.external_documentation_url
  external_documentation_description = var.external_documentation_description
}
