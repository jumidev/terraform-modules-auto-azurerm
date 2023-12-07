
##############################################################################################
# optional azurerm_disk_pool_managed_disk_attachment 
##############################################################################################
resource "azurerm_disk_pool_managed_disk_attachment" "this" {
  count           = var.managed_disk_id != null ? 1 : 0
  disk_pool_id    = azurerm_disk_pool.this.id
  managed_disk_id = var.managed_disk_id
}
