data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_iothub_dps" "this" {
  name                = var.iothub_dps_name
  resource_group_name = var.iothub_dps_resource_group_name != null ? var.iothub_dps_resource_group_name : var.resource_group_name

}


resource "azurerm_iothub_dps_shared_access_policy" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  iothub_dps_name     = data.azurerm_iothub_dps.this.name

  ########################################
  # optional vars
  ########################################
  enrollment_read    = var.enrollment_read
  enrollment_write   = var.enrollment_write
  registration_read  = var.registration_read
  registration_write = var.registration_write
  service_config     = var.service_config
}
