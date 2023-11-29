

resource "azurerm_data_factory_trigger_blob_event" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  data_factory_id    = var.data_factory_id
  storage_account_id = var.storage_account_id
  events             = var.events

  dynamic "pipeline" { # var.pipeline
    for_each = var.pipeline != null ? var.pipeline : []
    content {
      name       = pipeline.key
      parameters = lookup(pipeline.value, "parameters", null)
    }
  }


  ########################################
  # optional vars
  ########################################
  activated             = var.activated # Default: True
  additional_properties = var.additional_properties
  annotations           = var.annotations
  blob_path_begins_with = var.blob_path_begins_with
  blob_path_ends_with   = var.blob_path_ends_with
  description           = var.description
  ignore_empty_blobs    = var.ignore_empty_blobs
}
