data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_stream_analytics_managed_private_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  name                          = var.name
  resource_group_name           = data.azurerm_resource_group.this.name
  stream_analytics_cluster_name = var.stream_analytics_cluster_name
  target_resource_id            = var.target_resource_id
  subresource_name              = var.subresource_name
}
