data "azurerm_eventhub_namespace" "this" {
  name                = var.eventhub_namespace_name
  resource_group_name = var.eventhub_namespace_resource_group_name == null ? null : var.eventhub_namespace_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_eventhub" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  namespace_name      = data.azurerm_eventhub_namespace.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  partition_count     = var.partition_count
  message_retention   = var.message_retention

  ########################################
  # optional vars
  ########################################

  dynamic "capture_description" { # var.capture_description
    for_each = var.capture_description != null ? var.capture_description : []
    content {
      enabled             = lookup(capture_description.value, "enabled")  # (Required) 
      encoding            = lookup(capture_description.value, "encoding") # (Required) possible values: Avro | AvroDeflate
      interval_in_seconds = lookup(capture_description.value, "interval_in_seconds", "300")
      size_limit_in_bytes = lookup(capture_description.value, "size_limit_in_bytes", "314572800")
      skip_empty_archives = lookup(capture_description.value, "skip_empty_archives", false)

      dynamic "destination" { # capture_description.value.destination
        for_each = capture_description.value.destination != null ? capture_description.value.destination : []
        content {
          name                = destination.key
          archive_name_format = lookup(destination.value, "archive_name_format") # (Required) 
          blob_container_name = lookup(destination.value, "blob_container_name") # (Required) 
          storage_account_id  = lookup(destination.value, "storage_account_id")  # (Required) 
        }
      }

    }
  }

  status = var.status # Default: Active
}
