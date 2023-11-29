data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_aadb2c_directory" "this" {

  ########################################
  # required vars
  ########################################
  data_residency_location = var.data_residency_location
  domain_name             = var.domain_name
  resource_group_name     = data.azurerm_resource_group.this.name
  sku_name                = var.sku_name

  ########################################
  # optional vars
  ########################################
  country_code = var.country_code
  display_name = var.display_name
  tags         = var.tags
}
