data "azurerm_network_watcher" "this" {
  name                = var.network_watcher_name
  resource_group_name = var.network_watcher_resource_group_name != null ? var.network_watcher_resource_group_name : var.resource_group_name

}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_network_packet_capture" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  network_watcher_name = data.azurerm_network_watcher.this.name
  resource_group_name  = data.azurerm_resource_group.this.name
  target_resource_id   = var.target_resource_id

  storage_location {
    file_path          = lookup(storage_location.value, "file_path", null)
    storage_account_id = lookup(storage_location.value, "storage_account_id", null)
  }


  ########################################
  # optional vars
  ########################################
  maximum_bytes_per_packet  = var.maximum_bytes_per_packet  # Default: 0
  maximum_bytes_per_session = var.maximum_bytes_per_session # Default: 1073741824
  maximum_capture_duration  = var.maximum_capture_duration  # Default: 18000

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

}
