
##############################################################################################
# optional azurerm_virtual_machine_data_disk_attachment 
##############################################################################################
resource "azurerm_virtual_machine_data_disk_attachment" "this" {
  count                     = var.virtual_machine_data_disk_attachment != null ? 1 : 0
  virtual_machine_id        = azurerm_linux_virtual_machine.this.id
  managed_disk_id           = lookup(var.virtual_machine_data_disk_attachment, "var.managed_disk_id", null)
  lun                       = lookup(var.virtual_machine_data_disk_attachment, "var.lun", 3)
  caching                   = lookup(var.virtual_machine_data_disk_attachment, "var.caching", "ReadOnly")
  create_option             = lookup(var.virtual_machine_data_disk_attachment, "var.create_option", "Attach")
  write_accelerator_enabled = lookup(var.virtual_machine_data_disk_attachment, "var.write_accelerator_enabled", false)
}
