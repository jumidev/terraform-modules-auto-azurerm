data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_eventgrid_domain_topic" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  domain_name         = var.domain_name
  resource_group_name = data.azurerm_resource_group.this.name
}
