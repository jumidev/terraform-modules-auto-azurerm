

resource "azurerm_data_factory_data_flow" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  data_factory_id = var.data_factory_id

  dynamic "source" { # var.source
    for_each = var.source != null ? var.source : []
    content {
      name        = source.key
      description = lookup(source.value, "description", null)

      dynamic "dataset" { # source.value.dataset
        for_each = source.value.dataset != null ? source.value.dataset : []
        content {
          name       = dataset.key
          parameters = lookup(dataset.value, "parameters", null)
        }
      }


      dynamic "flowlet" { # source.value.flowlet
        for_each = source.value.flowlet != null ? source.value.flowlet : []
        content {
          name               = flowlet.key
          dataset_parameters = lookup(flowlet.value, "dataset_parameters", null)
          parameters         = lookup(flowlet.value, "parameters", null)
        }
      }


      dynamic "linked_service" { # source.value.linked_service
        for_each = source.value.linked_service != null ? source.value.linked_service : []
        content {
          name       = linked_service.key
          parameters = lookup(linked_service.value, "parameters", null)
        }
      }


      dynamic "rejected_linked_service" { # source.value.rejected_linked_service
        for_each = source.value.rejected_linked_service != null ? source.value.rejected_linked_service : []
        content {
          name       = rejected_linked_service.key
          parameters = lookup(rejected_linked_service.value, "parameters", null)
        }
      }


      dynamic "schema_linked_service" { # source.value.schema_linked_service
        for_each = source.value.schema_linked_service != null ? source.value.schema_linked_service : []
        content {
          name       = schema_linked_service.key
          parameters = lookup(schema_linked_service.value, "parameters", null)
        }
      }

    }
  }


  dynamic "sink" { # var.sink
    for_each = var.sink != null ? var.sink : []
    content {
      name        = sink.key
      description = lookup(sink.value, "description", null)

      dynamic "dataset" { # sink.value.dataset
        for_each = sink.value.dataset != null ? sink.value.dataset : []
        content {
          name       = dataset.key
          parameters = lookup(dataset.value, "parameters", null)
        }
      }


      dynamic "flowlet" { # sink.value.flowlet
        for_each = sink.value.flowlet != null ? sink.value.flowlet : []
        content {
          name               = flowlet.key
          dataset_parameters = lookup(flowlet.value, "dataset_parameters", null)
          parameters         = lookup(flowlet.value, "parameters", null)
        }
      }


      dynamic "linked_service" { # sink.value.linked_service
        for_each = sink.value.linked_service != null ? sink.value.linked_service : []
        content {
          name       = linked_service.key
          parameters = lookup(linked_service.value, "parameters", null)
        }
      }


      dynamic "rejected_linked_service" { # sink.value.rejected_linked_service
        for_each = sink.value.rejected_linked_service != null ? sink.value.rejected_linked_service : []
        content {
          name       = rejected_linked_service.key
          parameters = lookup(rejected_linked_service.value, "parameters", null)
        }
      }


      dynamic "schema_linked_service" { # sink.value.schema_linked_service
        for_each = sink.value.schema_linked_service != null ? sink.value.schema_linked_service : []
        content {
          name       = schema_linked_service.key
          parameters = lookup(schema_linked_service.value, "parameters", null)
        }
      }

    }
  }


  ########################################
  # optional vars
  ########################################
  script       = var.script
  script_lines = var.script_lines
  annotations  = var.annotations
  description  = var.description
  folder       = var.folder

  dynamic "transformation" { # var.transformation
    for_each = var.transformation != null ? var.transformation : []
    content {
      name        = transformation.key
      description = lookup(transformation.value, "description", null)

      dynamic "dataset" { # transformation.value.dataset
        for_each = transformation.value.dataset != null ? transformation.value.dataset : []
        content {
          name       = dataset.key
          parameters = lookup(dataset.value, "parameters", null)
        }
      }


      dynamic "flowlet" { # transformation.value.flowlet
        for_each = transformation.value.flowlet != null ? transformation.value.flowlet : []
        content {
          name               = flowlet.key
          dataset_parameters = lookup(flowlet.value, "dataset_parameters", null)
          parameters         = lookup(flowlet.value, "parameters", null)
        }
      }


      dynamic "linked_service" { # transformation.value.linked_service
        for_each = transformation.value.linked_service != null ? transformation.value.linked_service : []
        content {
          name       = linked_service.key
          parameters = lookup(linked_service.value, "parameters", null)
        }
      }

    }
  }

}
