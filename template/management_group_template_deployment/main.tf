

resource "azurerm_management_group_template_deployment" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  management_group_id = var.management_group_id
  name                = var.name

  ########################################
  # optional vars
  ########################################
  debug_level              = var.debug_level
  parameters_content       = var.parameters_content
  template_content         = var.template_content
  template_spec_version_id = var.template_spec_version_id
  tags                     = var.tags
}
