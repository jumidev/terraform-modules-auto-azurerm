

resource "azurerm_image" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  source_virtual_machine_id = var.source_virtual_machine_id

  dynamic "os_disk" { # var.os_disks
    for_each = var.os_disks != null ? var.os_disks : []
    content {
      os_type                = lookup(os_disk.value, "os_type", null)
      os_state               = lookup(os_disk.value, "os_state", null)
      managed_disk_id        = lookup(os_disk.value, "managed_disk_id", null)
      blob_uri               = lookup(os_disk.value, "blob_uri", null)
      caching                = lookup(os_disk.value, "caching", "None")
      size_gb                = lookup(os_disk.value, "size_gb", null)
      disk_encryption_set_id = lookup(os_disk.value, "disk_encryption_set_id", null)
    }
  }


  dynamic "data_disk" { # var.data_disks
    for_each = var.data_disks != null ? var.data_disks : []
    content {
      lun             = lookup(data_disk.value, "lun", null)
      managed_disk_id = lookup(data_disk.value, "managed_disk_id", null)
      blob_uri        = lookup(data_disk.value, "blob_uri", null)
      caching         = lookup(data_disk.value, "caching", "None")
      size_gb         = lookup(data_disk.value, "size_gb", null)
    }
  }

  tags               = var.tags
  zone_resilient     = var.zone_resilient     # Default: False
  hyper_v_generation = var.hyper_v_generation # Default: V1
}
