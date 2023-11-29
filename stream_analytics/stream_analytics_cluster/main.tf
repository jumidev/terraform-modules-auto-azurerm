data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_stream_analytics_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  streaming_capacity  = var.streaming_capacity

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
