data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_template_deployment" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  deployment_mode     = var.deployment_mode

  ########################################
  # optional vars
  ########################################
  template_body   = var.template_body
  parameters      = var.parameters
  parameters_body = var.parameters_body
}
