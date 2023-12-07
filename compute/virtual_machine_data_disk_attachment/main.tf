

resource "azurerm_virtual_machine_data_disk_attachment" "this" {

  ########################################
  # required vars
  ########################################
  virtual_machine_id = var.virtual_machine_id
  managed_disk_id    = var.managed_disk_id
  lun                = var.lun     # Default: 3
  caching            = var.caching # Default: ReadOnly

  ########################################
  # optional vars
  ########################################
  create_option             = var.create_option             # Default: Attach
  write_accelerator_enabled = var.write_accelerator_enabled # Default: False
}
