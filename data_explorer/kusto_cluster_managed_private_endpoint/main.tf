data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_kusto_cluster_managed_private_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  cluster_name             = var.cluster_name
  resource_group_name      = data.azurerm_resource_group.this.name
  private_link_resource_id = var.private_link_resource_id
  group_id                 = var.group_id

  ########################################
  # optional vars
  ########################################
  private_link_resource_region = var.private_link_resource_region
  request_message              = var.request_message
}
