
##############################################################################################
# optional azurerm_virtual_machine_data_disk_attachment 
##############################################################################################
resource "azurerm_virtual_machine_data_disk_attachment" "this" {
  count                     = var.managed_disk_id != null ? 1 : 0
  virtual_machine_id        = azurerm_linux_virtual_machine.this.id
  managed_disk_id           = var.managed_disk_id
  lun                       = var.lun                       # Default: 3
  caching                   = var.caching                   # Default: ReadOnly
  create_option             = var.create_option             # Default: Attach
  write_accelerator_enabled = var.write_accelerator_enabled # Default: False
}
