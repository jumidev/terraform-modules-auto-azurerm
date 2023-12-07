data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_disk_pool" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  zones               = var.zones
  sku_name            = var.sku_name
  subnet_id           = var.subnet_id

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}

##############################################################################################
# optional azurerm_disk_pool_managed_disk_attachment 
##############################################################################################
resource "azurerm_disk_pool_managed_disk_attachment" "this" {
  count           = var.managed_disk_id != null ? 1 : 0
  disk_pool_id    = azurerm_disk_pool.this.id
  managed_disk_id = var.managed_disk_id
}
