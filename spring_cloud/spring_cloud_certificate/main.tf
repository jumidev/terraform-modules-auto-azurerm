data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_spring_cloud_certificate" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  service_name        = var.service_name

  ########################################
  # optional vars
  ########################################
  exclude_private_key      = var.exclude_private_key # Default: False
  key_vault_certificate_id = var.key_vault_certificate_id
  certificate_content      = var.certificate_content
}
