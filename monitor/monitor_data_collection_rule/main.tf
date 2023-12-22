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

  dynamic "data_sources" { # var.data_sources
    for_each = var.data_sources != null ? var.data_sources : []
    content {

      dynamic "data_import" { # data_sources.value.data_import
        for_each = data_sources.value.data_import != null ? data_sources.value.data_import : []
        content {

          dynamic "event_hub_data_source" { # data_import.value.event_hub_data_source
            for_each = data_import.value.event_hub_data_source != null ? data_import.value.event_hub_data_source : []
            content {
              name           = event_hub_data_source.key
              stream         = lookup(event_hub_data_source.value, "stream") # (Required) 
              consumer_group = lookup(event_hub_data_source.value, "consumer_group", null)
            }
          }

        }
      }


      dynamic "extension" { # data_sources.value.extension
        for_each = data_sources.value.extension != null ? data_sources.value.extension : []
        content {
          extension_name     = lookup(extension.value, "extension_name") # (Required) 
          name               = extension.key
          streams            = lookup(extension.value, "streams") # (Required) possible values: Microsoft-Event | Microsoft-InsightsMetrics | Microsoft-Perf | Microsoft-Syslog | Microsoft-WindowsEvent
          extension_json     = lookup(extension.value, "extension_json", null)
          input_data_sources = lookup(extension.value, "input_data_sources", null)
        }
      }


      dynamic "iis_log" { # data_sources.value.iis_log
        for_each = data_sources.value.iis_log != null ? data_sources.value.iis_log : []
        content {
          name            = iis_log.key
          streams         = lookup(iis_log.value, "streams") # (Required) 
          log_directories = lookup(iis_log.value, "log_directories", null)
        }
      }


      dynamic "log_file" { # data_sources.value.log_file
        for_each = data_sources.value.log_file != null ? data_sources.value.log_file : []
        content {

          dynamic "text" { # log_file.value.text
            for_each = log_file.value.text != null ? log_file.value.text : []
            content {
              record_start_timestamp_format = lookup(text.value, "record_start_timestamp_format") # (Required) possible values: ISO 8601 | YYYY-MM-DD HH:MM:SS | M/D/YYYY HH:MM:SS AM/PM | Mon DD, YYYY HH:MM:SS | yyMMdd HH:mm:ss | ddMMyy HH:mm:ss | MMM d hh:mm:ss | dd/MMM/yyyy:HH:mm:ss zzz | yyyy-MM-ddTHH:mm:ssK
            }
          }

        }
      }


      dynamic "performance_counter" { # data_sources.value.performance_counter
        for_each = data_sources.value.performance_counter != null ? data_sources.value.performance_counter : []
        content {
          counter_specifiers            = lookup(performance_counter.value, "counter_specifiers") # (Required) 
          name                          = performance_counter.key
          sampling_frequency_in_seconds = lookup(performance_counter.value, "sampling_frequency_in_seconds") # (Required) 
          streams                       = lookup(performance_counter.value, "streams")                       # (Required) possible values: Microsoft-InsightsMetrics | Microsoft-Perf
        }
      }


      dynamic "platform_telemetry" { # data_sources.value.platform_telemetry
        for_each = data_sources.value.platform_telemetry != null ? data_sources.value.platform_telemetry : []
        content {
          name    = platform_telemetry.key
          streams = lookup(platform_telemetry.value, "streams") # (Required) possible values: Microsoft.Cache/redis:Metrics-Group-All
        }
      }


      dynamic "prometheus_forwarder" { # data_sources.value.prometheus_forwarder
        for_each = data_sources.value.prometheus_forwarder != null ? data_sources.value.prometheus_forwarder : []
        content {
          name                 = prometheus_forwarder.key
          streams              = lookup(prometheus_forwarder.value, "streams") # (Required) 
          label_include_filter = lookup(prometheus_forwarder.value, "label_include_filter", null)
        }
      }


      dynamic "syslog" { # data_sources.value.syslog
        for_each = data_sources.value.syslog != null ? data_sources.value.syslog : []
        content {
          facility_names = lookup(syslog.value, "facility_names") # (Required) possible values: auth | authpriv | cron | daemon | kern | lpr | mail | mark | news | syslog | user | uucp | local0 | local1 | local2 | local3 | local4 | local5 | local6 | local7 | *
          log_levels     = lookup(syslog.value, "log_levels")     # (Required) possible values: Debug | Info | Notice | Warning | Error | Critical | Alert | Emergency | *
          name           = syslog.key
          streams        = lookup(syslog.value, "streams", null)
        }
      }


      dynamic "windows_event_log" { # data_sources.value.windows_event_log
        for_each = data_sources.value.windows_event_log != null ? data_sources.value.windows_event_log : []
        content {
          name           = windows_event_log.key
          streams        = lookup(windows_event_log.value, "streams")        # (Required) possible values: Microsoft-Event | Microsoft-WindowsEvent | Microsoft-RomeDetectionEvent | Microsoft-SecurityEvent
          x_path_queries = lookup(windows_event_log.value, "x_path_queries") # (Required) 
        }
      }


      dynamic "windows_firewall_log" { # data_sources.value.windows_firewall_log
        for_each = data_sources.value.windows_firewall_log != null ? data_sources.value.windows_firewall_log : []
        content {
          name    = windows_firewall_log.key
          streams = lookup(windows_firewall_log.value, "streams") # (Required) 
        }
      }

    }
  }

  description = var.description

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

##############################################################################################
# optional azurerm_monitor_data_collection_rule_association 
##############################################################################################
resource "azurerm_monitor_data_collection_rule_association" "this" {
  count                       = var.monitor_data_collection_rule_association != null ? 1 : 0
  target_resource_id          = lookup(var.monitor_data_collection_rule_association, "target_resource_id")
  name                        = lookup(var.monitor_data_collection_rule_association, "name", "configurationAccessEndpoint")
  data_collection_endpoint_id = lookup(var.monitor_data_collection_rule_association, "data_collection_endpoint_id", null)
  data_collection_rule_id     = azurerm_monitor_data_collection_rule.this.id
  description                 = lookup(var.monitor_data_collection_rule_association, "description", null)
}
