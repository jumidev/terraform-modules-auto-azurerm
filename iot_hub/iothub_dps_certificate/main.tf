data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_iothub_dps_certificate" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  iot_dps_name        = var.iot_dps_name
  certificate_content = var.certificate_content

  ########################################
  # optional vars
  ########################################
  is_verified = var.is_verified # Default: False
}
