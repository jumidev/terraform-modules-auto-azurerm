

resource "azurerm_data_factory_dataset_parquet" "this" {

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
      filename                 = lookup(http_server_location.value, "filename")     # (Required) 
      dynamic_path_enabled     = lookup(http_server_location.value, "dynamic_path_enabled", false)
      dynamic_filename_enabled = lookup(http_server_location.value, "dynamic_filename_enabled", false)
      path                     = lookup(http_server_location.value, "path", null)
    }
  }


  dynamic "azure_blob_fs_location" { # var.azure_blob_fs_location
    for_each = var.azure_blob_fs_location != null ? var.azure_blob_fs_location : []
    content {
      file_system                 = lookup(azure_blob_fs_location.value, "file_system", null)
      dynamic_file_system_enabled = lookup(azure_blob_fs_location.value, "dynamic_file_system_enabled", false)
      path                        = lookup(azure_blob_fs_location.value, "path", null)
      dynamic_path_enabled        = lookup(azure_blob_fs_location.value, "dynamic_path_enabled", false)
      filename                    = lookup(azure_blob_fs_location.value, "filename", null)
      dynamic_filename_enabled    = lookup(azure_blob_fs_location.value, "dynamic_filename_enabled", false)
    }
  }


  dynamic "azure_blob_storage_location" { # var.azure_blob_storage_location
    for_each = var.azure_blob_storage_location != null ? var.azure_blob_storage_location : []
    content {
      container                 = lookup(azure_blob_storage_location.value, "container") # (Required) 
      dynamic_container_enabled = lookup(azure_blob_storage_location.value, "dynamic_container_enabled", false)
      path                      = lookup(azure_blob_storage_location.value, "path", null)
      dynamic_path_enabled      = lookup(azure_blob_storage_location.value, "dynamic_path_enabled", false)
      filename                  = lookup(azure_blob_storage_location.value, "filename", null)
      dynamic_filename_enabled  = lookup(azure_blob_storage_location.value, "dynamic_filename_enabled", false)
    }
  }

  compression_codec = var.compression_codec
  compression_level = var.compression_level
}
