

resource "azurerm_virtual_machine_scale_set_packet_capture" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  network_watcher_id           = var.network_watcher_id
  virtual_machine_scale_set_id = var.virtual_machine_scale_set_id

  storage_location {
    file_path          = lookup(storage_location.value, "file_path", null)
    storage_account_id = lookup(storage_location.value, "storage_account_id", null)
  }


  ########################################
  # optional vars
  ########################################
  maximum_bytes_per_packet            = var.maximum_bytes_per_packet            # Default: 0
  maximum_bytes_per_session           = var.maximum_bytes_per_session           # Default: 1073741824
  maximum_capture_duration_in_seconds = var.maximum_capture_duration_in_seconds # Default: 18000

  dynamic "filter" { # var.filter
    for_each = var.filter != null ? var.filter : []
    content {
      local_ip_address  = lookup(filter.value, "local_ip_address", null)
      local_port        = lookup(filter.value, "local_port", null)
      protocol          = lookup(filter.value, "protocol") # (Required) possible values: Any | TCP | UDP
      remote_ip_address = lookup(filter.value, "remote_ip_address", null)
      remote_port       = lookup(filter.value, "remote_port", null)
    }
  }


  dynamic "machine_scope" { # var.machine_scope
    for_each = var.machine_scope != null ? var.machine_scope : []
    content {
      exclude_instance_ids = lookup(machine_scope.value, "exclude_instance_ids", null)
      include_instance_ids = lookup(machine_scope.value, "include_instance_ids", null)
    }
  }

}
