data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_virtual_desktop_application_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  type                = var.type
  host_pool_id        = var.host_pool_id

  ########################################
  # optional vars
  ########################################
  friendly_name                = var.friendly_name
  default_desktop_display_name = var.default_desktop_display_name
  description                  = var.description
  tags                         = var.tags
}

##############################################################################################
# optional azurerm_virtual_desktop_workspace_application_group_association 
##############################################################################################
resource "azurerm_virtual_desktop_workspace_application_group_association" "this" {
  count                = var.workspace_id != null ? 1 : 0
  workspace_id         = var.workspace_id
  application_group_id = azurerm_virtual_desktop_application_group.this.id
}
