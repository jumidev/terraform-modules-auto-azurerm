data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_eventgrid_system_topic_event_subscription" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  system_topic        = var.system_topic
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  expiration_time_utc   = var.expiration_time_utc
  event_delivery_schema = var.event_delivery_schema # Default: EventGridSchema

  dynamic "azure_function_endpoint" { # var.azure_function_endpoint
    for_each = var.azure_function_endpoint != null ? var.azure_function_endpoint : []
    content {
      function_id                       = lookup(azure_function_endpoint.value, "function_id") # (Required) 
      max_events_per_batch              = lookup(azure_function_endpoint.value, "max_events_per_batch", null)
      preferred_batch_size_in_kilobytes = lookup(azure_function_endpoint.value, "preferred_batch_size_in_kilobytes", null)
    }
  }

  eventhub_endpoint_id          = var.eventhub_endpoint_id
  hybrid_connection_endpoint_id = var.hybrid_connection_endpoint_id
  service_bus_queue_endpoint_id = var.service_bus_queue_endpoint_id
  service_bus_topic_endpoint_id = var.service_bus_topic_endpoint_id

  dynamic "storage_queue_endpoint" { # var.storage_queue_endpoint
    for_each = var.storage_queue_endpoint != null ? var.storage_queue_endpoint : []
    content {
      storage_account_id                    = lookup(storage_queue_endpoint.value, "storage_account_id") # (Required) 
      queue_name                            = lookup(storage_queue_endpoint.value, "queue_name")         # (Required) 
      queue_message_time_to_live_in_seconds = lookup(storage_queue_endpoint.value, "queue_message_time_to_live_in_seconds", null)
    }
  }


  dynamic "webhook_endpoint" { # var.webhook_endpoint
    for_each = var.webhook_endpoint != null ? var.webhook_endpoint : []
    content {
      url                               = lookup(webhook_endpoint.value, "url") # (Required) 
      base_url                          = lookup(webhook_endpoint.value, "base_url", null)
      max_events_per_batch              = lookup(webhook_endpoint.value, "max_events_per_batch", null)
      preferred_batch_size_in_kilobytes = lookup(webhook_endpoint.value, "preferred_batch_size_in_kilobytes", null)
      active_directory_tenant_id        = lookup(webhook_endpoint.value, "active_directory_tenant_id", null)
      active_directory_app_id_or_uri    = lookup(webhook_endpoint.value, "active_directory_app_id_or_uri", null)
    }
  }

  included_event_types = var.included_event_types

  dynamic "subject_filter" { # var.subject_filter
    for_each = var.subject_filter != null ? var.subject_filter : []
    content {
      subject_begins_with = lookup(subject_filter.value, "subject_begins_with", null)
      subject_ends_with   = lookup(subject_filter.value, "subject_ends_with", null)
      case_sensitive      = lookup(subject_filter.value, "case_sensitive", null)
    }
  }


  dynamic "advanced_filter" { # var.advanced_filter
    for_each = var.advanced_filter != null ? var.advanced_filter : []
    content {
      bool_equals                   = lookup(advanced_filter.value, "bool_equals", null)
      number_greater_than           = lookup(advanced_filter.value, "number_greater_than", null)
      number_greater_than_or_equals = lookup(advanced_filter.value, "number_greater_than_or_equals", null)
      number_less_than              = lookup(advanced_filter.value, "number_less_than", null)
      number_less_than_or_equals    = lookup(advanced_filter.value, "number_less_than_or_equals", null)
      number_in                     = lookup(advanced_filter.value, "number_in", null)
      number_not_in                 = lookup(advanced_filter.value, "number_not_in", null)
      number_in_range               = lookup(advanced_filter.value, "number_in_range", null)
      number_not_in_range           = lookup(advanced_filter.value, "number_not_in_range", null)
      string_begins_with            = lookup(advanced_filter.value, "string_begins_with", null)
      string_not_begins_with        = lookup(advanced_filter.value, "string_not_begins_with", null)
      string_ends_with              = lookup(advanced_filter.value, "string_ends_with", null)
      string_not_ends_with          = lookup(advanced_filter.value, "string_not_ends_with", null)
      string_contains               = lookup(advanced_filter.value, "string_contains", null)
      string_not_contains           = lookup(advanced_filter.value, "string_not_contains", null)
      string_in                     = lookup(advanced_filter.value, "string_in", null)
      string_not_in                 = lookup(advanced_filter.value, "string_not_in", null)
      is_not_null                   = lookup(advanced_filter.value, "is_not_null", null)
      is_null_or_undefined          = lookup(advanced_filter.value, "is_null_or_undefined", null)
      key                           = lookup(advanced_filter.value, "key")    # (Required) 
      value                         = lookup(advanced_filter.value, "value")  # (Required) 
      values                        = lookup(advanced_filter.value, "values") # (Required) 
    }
  }


  dynamic "delivery_identity" { # var.delivery_identity
    for_each = var.delivery_identity != null ? var.delivery_identity : []
    content {
      type                   = lookup(delivery_identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned
      user_assigned_identity = lookup(delivery_identity.value, "user_assigned_identity", null)
    }
  }


  dynamic "delivery_property" { # var.delivery_property
    for_each = var.delivery_property != null ? var.delivery_property : []
    content {
      header_name  = lookup(delivery_property.value, "header_name") # (Required) 
      type         = lookup(delivery_property.value, "type")        # (Required) 
      value        = lookup(delivery_property.value, "value", null)
      source_field = lookup(delivery_property.value, "source_field", null)
      secret       = lookup(delivery_property.value, "secret", null)
    }
  }


  dynamic "dead_letter_identity" { # var.dead_letter_identity
    for_each = var.dead_letter_identity != null ? var.dead_letter_identity : []
    content {
      type                   = lookup(dead_letter_identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned
      user_assigned_identity = lookup(dead_letter_identity.value, "user_assigned_identity", null)
    }
  }


  dynamic "storage_blob_dead_letter_destination" { # var.storage_blob_dead_letter_destination
    for_each = var.storage_blob_dead_letter_destination != null ? var.storage_blob_dead_letter_destination : []
    content {
      storage_account_id          = lookup(storage_blob_dead_letter_destination.value, "storage_account_id")          # (Required) 
      storage_blob_container_name = lookup(storage_blob_dead_letter_destination.value, "storage_blob_container_name") # (Required) 
    }
  }


  dynamic "retry_policy" { # var.retry_policy
    for_each = var.retry_policy != null ? var.retry_policy : []
    content {
      max_delivery_attempts = lookup(retry_policy.value, "max_delivery_attempts") # (Required) 
      event_time_to_live    = lookup(retry_policy.value, "event_time_to_live")    # (Required) possible values: 1 | 1440
    }
  }

  labels                               = var.labels
  advanced_filtering_on_arrays_enabled = var.advanced_filtering_on_arrays_enabled # Default: False
}
