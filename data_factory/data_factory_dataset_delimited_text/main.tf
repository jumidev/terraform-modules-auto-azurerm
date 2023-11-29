

resource "azurerm_data_factory_dataset_delimited_text" "this" {

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
      path                      = lookup(azure_blob_storage_location.value, "path", null)
      filename                  = lookup(azure_blob_storage_location.value, "filename", null)
      dynamic_container_enabled = lookup(azure_blob_storage_location.value, "dynamic_container_enabled", false)
      dynamic_path_enabled      = lookup(azure_blob_storage_location.value, "dynamic_path_enabled", false)
      dynamic_filename_enabled  = lookup(azure_blob_storage_location.value, "dynamic_filename_enabled", false)
    }
  }


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

  column_delimiter    = var.column_delimiter # Default: ,
  row_delimiter       = var.row_delimiter    # Default: \r\n
  encoding            = var.encoding
  quote_character     = var.quote_character     # Default: \"
  escape_character    = var.escape_character    # Default: \\
  first_row_as_header = var.first_row_as_header # Default: False
  null_value          = var.null_value          # Default: 
  compression_codec   = var.compression_codec
  compression_level   = var.compression_level
}
