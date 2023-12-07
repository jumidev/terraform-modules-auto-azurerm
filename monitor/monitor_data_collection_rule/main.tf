data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_data_collection_rule" "this" {

  ########################################
  # required vars
  ########################################

  dynamic "data_flow" { # var.data_flow
    for_each = var.data_flow != null ? var.data_flow : []
    content {
      destinations       = lookup(data_flow.value, "destinations") # (Required) 
      streams            = lookup(data_flow.value, "streams")      # (Required) possible values: Microsoft-Event | Microsoft-InsightsMetrics | Microsoft-Perf | Microsoft-Syslog | Microsoft-WindowsEvent | Microsoft-PrometheusMetrics
      built_in_transform = lookup(data_flow.value, "built_in_transform", null)
      output_stream      = lookup(data_flow.value, "output_stream", null)
      transform_kql      = lookup(data_flow.value, "transform_kql", null)
    }
  }


  destinations {
    azure_monitor_metrics = lookup(destinations.value, "azure_monitor_metrics", null)
    event_hub             = lookup(destinations.value, "event_hub", null)
    event_hub_direct      = lookup(destinations.value, "event_hub_direct", null)
    log_analytics         = lookup(destinations.value, "log_analytics", null)
    monitor_account       = lookup(destinations.value, "monitor_account", null)
    storage_blob          = lookup(destinations.value, "storage_blob", null)
    storage_blob_direct   = lookup(destinations.value, "storage_blob_direct", null)
    storage_table_direct  = lookup(destinations.value, "storage_table_direct", null)
  }

  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  data_collection_endpoint_id = var.data_collection_endpoint_id
  data_sources                = var.data_sources
  description                 = var.description

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  kind = var.kind

  dynamic "stream_declaration" { # var.stream_declaration
    for_each = var.stream_declaration != null ? var.stream_declaration : []
    content {
      stream_name = lookup(stream_declaration.value, "stream_name") # (Required) 
      column      = lookup(stream_declaration.value, "column")      # (Required) 
    }
  }

  tags = var.tags
}
