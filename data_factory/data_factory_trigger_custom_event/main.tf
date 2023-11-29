

resource "azurerm_data_factory_trigger_custom_event" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  data_factory_id    = var.data_factory_id
  eventgrid_topic_id = var.eventgrid_topic_id
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
  description           = var.description
  subject_begins_with   = var.subject_begins_with
  subject_ends_with     = var.subject_ends_with
}
