

resource "azurerm_data_factory_dataset_json" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  data_factory_id     = var.data_factory_id
  linked_service_name = var.linked_service_name

  ########################################
  # optional vars
  ########################################
  folder = var.folder

  dynamic "schema_column" { # var.schema_column
    for_each = var.schema_column != null ? var.schema_column : []
    content {
      name        = schema_column.key
      type        = lookup(schema_column.value, "type", null)
      description = lookup(schema_column.value, "description", null)
    }
  }

  description           = var.description
  annotations           = var.annotations
  parameters            = var.parameters
  additional_properties = var.additional_properties

  dynamic "http_server_location" { # var.http_server_location
    for_each = var.http_server_location != null ? var.http_server_location : []
    content {
      relative_url             = lookup(http_server_location.value, "relative_url") # (Required) 
      path                     = lookup(http_server_location.value, "path")         # (Required) 
      filename                 = lookup(http_server_location.value, "filename")     # (Required) 
      dynamic_path_enabled     = lookup(http_server_location.value, "dynamic_path_enabled", false)
      dynamic_filename_enabled = lookup(http_server_location.value, "dynamic_filename_enabled", false)
    }
  }


  dynamic "azure_blob_storage_location" { # var.azure_blob_storage_location
    for_each = var.azure_blob_storage_location != null ? var.azure_blob_storage_location : []
    content {
      container                 = lookup(azure_blob_storage_location.value, "container") # (Required) 
      path                      = lookup(azure_blob_storage_location.value, "path")      # (Required) 
      filename                  = lookup(azure_blob_storage_location.value, "filename")  # (Required) 
      dynamic_container_enabled = lookup(azure_blob_storage_location.value, "dynamic_container_enabled", false)
      dynamic_path_enabled      = lookup(azure_blob_storage_location.value, "dynamic_path_enabled", false)
      dynamic_filename_enabled  = lookup(azure_blob_storage_location.value, "dynamic_filename_enabled", false)
    }
  }

  encoding = var.encoding
}
