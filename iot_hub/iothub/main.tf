data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_iothub" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  sku {
    name     = lookup(sku.value, "name")     # (Required) 
    capacity = lookup(sku.value, "capacity") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  local_authentication_enabled = var.local_authentication_enabled # Default: True
  event_hub_partition_count    = var.event_hub_partition_count
  event_hub_retention_in_days  = var.event_hub_retention_in_days

  dynamic "endpoint" { # var.endpoint
    for_each = var.endpoint != null ? var.endpoint : []
    content {
      type                       = lookup(endpoint.value, "type") # (Required) possible values: AzureIotHub.StorageContainer | AzureIotHub.ServiceBusQueue | AzureIotHub.ServiceBusTopic | AzureIotHub.EventHub
      name                       = endpoint.key
      authentication_type        = lookup(endpoint.value, "authentication_type", "keyBased")
      identity_id                = lookup(endpoint.value, "identity_id", null)
      endpoint_uri               = lookup(endpoint.value, "endpoint_uri", null)
      entity_path                = lookup(endpoint.value, "entity_path", null)
      connection_string          = lookup(endpoint.value, "connection_string", null)
      batch_frequency_in_seconds = lookup(endpoint.value, "batch_frequency_in_seconds", null)
      max_chunk_size_in_bytes    = lookup(endpoint.value, "max_chunk_size_in_bytes", null)
      container_name             = lookup(endpoint.value, "container_name", null)
      encoding                   = lookup(endpoint.value, "encoding", null)
      file_name_format           = lookup(endpoint.value, "file_name_format", "{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}")
      resource_group_name        = lookup(endpoint.value, "resource_group_name", null)
    }
  }


  dynamic "fallback_route" { # var.fallback_route
    for_each = var.fallback_route != null ? var.fallback_route : []
    content {
      source         = lookup(fallback_route.value, "source", "DeviceMessages")
      condition      = lookup(fallback_route.value, "condition", true)
      endpoint_names = lookup(fallback_route.value, "endpoint_names", null)
      enabled        = lookup(fallback_route.value, "enabled", null)
    }
  }


  dynamic "file_upload" { # var.file_upload
    for_each = var.file_upload != null ? var.file_upload : []
    content {
      authentication_type = lookup(file_upload.value, "authentication_type", "keyBased")
      identity_id         = lookup(file_upload.value, "identity_id", null)
      connection_string   = lookup(file_upload.value, "connection_string") # (Required) 
      container_name      = lookup(file_upload.value, "container_name")    # (Required) 
      sas_ttl             = lookup(file_upload.value, "sas_ttl", "PT1H")
      notifications       = lookup(file_upload.value, "notifications", false)
      lock_duration       = lookup(file_upload.value, "lock_duration", "PT1M")
      default_ttl         = lookup(file_upload.value, "default_ttl", "PT1H")
      max_delivery_count  = lookup(file_upload.value, "max_delivery_count", 10)
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }


  dynamic "network_rule_set" { # var.network_rule_set
    for_each = var.network_rule_set != null ? var.network_rule_set : []
    content {
      default_action                     = lookup(network_rule_set.value, "default_action", "Deny")
      apply_to_builtin_eventhub_endpoint = lookup(network_rule_set.value, "apply_to_builtin_eventhub_endpoint", false)

      dynamic "ip_rule" { # network_rule_set.value.ip_rule
        for_each = network_rule_set.value.ip_rule != null ? network_rule_set.value.ip_rule : []
        content {
          name    = ip_rule.key
          ip_mask = lookup(ip_rule.value, "ip_mask") # (Required) 
          action  = lookup(ip_rule.value, "action", "Allow")
        }
      }

    }
  }


  dynamic "route" { # var.route
    for_each = var.route != null ? var.route : []
    content {
      name           = route.key
      source         = lookup(route.value, "source") # (Required) possible values: Invalid | DeviceMessages | TwinChangeEvents | DeviceLifecycleEvents | DeviceConnectionStateEvents | DeviceJobLifecycleEvents | DigitalTwinChangeEvents
      condition      = lookup(route.value, "condition", true)
      endpoint_names = lookup(route.value, "endpoint_names") # (Required) 
      enabled        = lookup(route.value, "enabled")        # (Required) 
    }
  }


  dynamic "enrichment" { # var.enrichment
    for_each = var.enrichment != null ? var.enrichment : []
    content {
      key            = lookup(enrichment.value, "key")            # (Required) 
      value          = lookup(enrichment.value, "value")          # (Required) 
      endpoint_names = lookup(enrichment.value, "endpoint_names") # (Required) 
    }
  }


  dynamic "cloud_to_device" { # var.cloud_to_device
    for_each = var.cloud_to_device != null ? var.cloud_to_device : []
    content {
      max_delivery_count = lookup(cloud_to_device.value, "max_delivery_count", 10)
      default_ttl        = lookup(cloud_to_device.value, "default_ttl", "PT1H")

      dynamic "feedback" { # cloud_to_device.value.feedback
        for_each = cloud_to_device.value.feedback != null ? cloud_to_device.value.feedback : []
        content {
          time_to_live       = lookup(feedback.value, "time_to_live", "PT1H")
          max_delivery_count = lookup(feedback.value, "max_delivery_count", 10)
          lock_duration      = lookup(feedback.value, "lock_duration", "PT60S")
        }
      }

    }
  }

  public_network_access_enabled = var.public_network_access_enabled
  min_tls_version               = var.min_tls_version
  tags                          = var.tags
}
