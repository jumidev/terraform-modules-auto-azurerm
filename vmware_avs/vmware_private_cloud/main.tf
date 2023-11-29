data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
resource "random_string" "nsxt_password" {
  length  = 32
  special = false
  upper   = true
}
resource "random_string" "vcenter_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_vmware_private_cloud" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  management_cluster {
    size = lookup(management_cluster.value, "size") # (Required) 
  }

  network_subnet_cidr = var.network_subnet_cidr
  sku_name            = var.sku_name

  ########################################
  # optional vars
  ########################################
  internet_connection_enabled = var.internet_connection_enabled
  nsxt_password               = random_string.nsxt_password.result
  vcenter_password            = random_string.vcenter_password.result
  tags                        = var.tags
}
