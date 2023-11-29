

resource "azurerm_data_factory_dataset_binary" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  data_factory_id     = var.data_factory_id
  linked_service_name = var.linked_service_name

  ########################################
  # optional vars
  ########################################
  additional_properties = var.additional_properties
  annotations           = var.annotations

  dynamic "compression" { # var.compression
    for_each = var.compression != null ? var.compression : []
    content {
      type  = lookup(compression.value, "type") # (Required) possible values: BZip2 | Deflate | GZip | Tar | TarGZip | ZipDeflate
      level = lookup(compression.value, "level", null)
    }
  }

  description = var.description
  folder      = var.folder
  parameters  = var.parameters

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
      path                      = lookup(azure_blob_storage_location.value, "path", null)
      filename                  = lookup(azure_blob_storage_location.value, "filename", null)
      dynamic_container_enabled = lookup(azure_blob_storage_location.value, "dynamic_container_enabled", false)
      dynamic_path_enabled      = lookup(azure_blob_storage_location.value, "dynamic_path_enabled", false)
      dynamic_filename_enabled  = lookup(azure_blob_storage_location.value, "dynamic_filename_enabled", false)
    }
  }


  dynamic "sftp_server_location" { # var.sftp_server_location
    for_each = var.sftp_server_location != null ? var.sftp_server_location : []
    content {
      path                     = lookup(sftp_server_location.value, "path")     # (Required) 
      filename                 = lookup(sftp_server_location.value, "filename") # (Required) 
      dynamic_path_enabled     = lookup(sftp_server_location.value, "dynamic_path_enabled", false)
      dynamic_filename_enabled = lookup(sftp_server_location.value, "dynamic_filename_enabled", false)
    }
  }

}
