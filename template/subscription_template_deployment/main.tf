

resource "azurerm_subscription_template_deployment" "this" {

  ########################################
  # required vars
  ########################################
  location = var.location
  name     = var.name

  ########################################
  # optional vars
  ########################################
  debug_level              = var.debug_level
  template_content         = var.template_content
  template_spec_version_id = var.template_spec_version_id
  parameters_content       = var.parameters_content
  tags                     = var.tags
}
