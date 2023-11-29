data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_video_analyzer_edge_module" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  video_analyzer_name = var.video_analyzer_name
}
