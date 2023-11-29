data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_resource_group_template_deployment" "this" {

  ########################################
  # required vars
  ########################################
  deployment_mode     = var.deployment_mode
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  debug_level              = var.debug_level
  template_content         = var.template_content
  template_spec_version_id = var.template_spec_version_id
  parameters_content       = var.parameters_content
  tags                     = var.tags
}
