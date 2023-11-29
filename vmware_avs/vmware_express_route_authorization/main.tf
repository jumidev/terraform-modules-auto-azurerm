

resource "azurerm_vmware_express_route_authorization" "this" {

  ########################################
  # required vars
  ########################################
  name             = var.name
  private_cloud_id = var.private_cloud_id
}
