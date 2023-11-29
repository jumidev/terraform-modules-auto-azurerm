

resource "azurerm_sentinel_alert_rule_scheduled" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  log_analytics_workspace_id = var.log_analytics_workspace_id
  display_name               = var.display_name
  severity                   = var.severity
  query                      = var.query

  ########################################
  # optional vars
  ########################################

  dynamic "alert_details_override" { # var.alert_details_override
    for_each = var.alert_details_override != null ? var.alert_details_override : []
    content {
      description_format   = lookup(alert_details_override.value, "description_format", null)
      display_name_format  = lookup(alert_details_override.value, "display_name_format", null)
      severity_column_name = lookup(alert_details_override.value, "severity_column_name", null)
      tactics_column_name  = lookup(alert_details_override.value, "tactics_column_name", null)

      dynamic "dynamic_property" { # alert_details_override.value.dynamic_property
        for_each = alert_details_override.value.dynamic_property != null ? alert_details_override.value.dynamic_property : []
        content {
          name  = dynamic_property.key
          value = lookup(dynamic_property.value, "value") # (Required) 
        }
      }

    }
  }

  alert_rule_template_guid    = var.alert_rule_template_guid
  alert_rule_template_version = var.alert_rule_template_version
  custom_details              = var.custom_details
  description                 = var.description
  enabled                     = var.enabled # Default: True

  dynamic "entity_mapping" { # var.entity_mapping
    for_each = var.entity_mapping != null ? var.entity_mapping : []
    content {
      entity_type = lookup(entity_mapping.value, "entity_type") # (Required) possible values: Account | AzureResource | CloudApplication | DNS | File | FileHash | Host | IP | Mailbox | MailCluster | MailMessage | Malware | Process | RegistryKey | RegistryValue | SecurityGroup | SubmissionMail | URL

      dynamic "field_mapping" { # entity_mapping.value.field_mapping
        for_each = entity_mapping.value.field_mapping != null ? entity_mapping.value.field_mapping : []
        content {
          identifier  = lookup(field_mapping.value, "identifier")  # (Required) 
          column_name = lookup(field_mapping.value, "column_name") # (Required) 
        }
      }

    }
  }


  dynamic "event_grouping" { # var.event_grouping
    for_each = var.event_grouping != null ? var.event_grouping : []
    content {
      aggregation_method = lookup(event_grouping.value, "aggregation_method") # (Required) possible values: AlertPerResult | SingleAlert
    }
  }


  dynamic "incident_configuration" { # var.incident_configuration
    for_each = var.incident_configuration != null ? var.incident_configuration : []
    content {
      create_incident = lookup(incident_configuration.value, "create_incident") # (Required) 

      dynamic "grouping" { # incident_configuration.value.grouping
        for_each = incident_configuration.value.grouping != null ? incident_configuration.value.grouping : []
        content {
          enabled                 = lookup(grouping.value, "enabled", true)
          lookback_duration       = lookup(grouping.value, "lookback_duration", "PT5M")
          reopen_closed_incidents = lookup(grouping.value, "reopen_closed_incidents", false)
          entity_matching_method  = lookup(grouping.value, "entity_matching_method", "AnyAlert")
          group_by_entities       = lookup(grouping.value, "group_by_entities", null)
          group_by_alert_details  = lookup(grouping.value, "group_by_alert_details", null)
          group_by_custom_details = lookup(grouping.value, "group_by_custom_details", null)
        }
      }

    }
  }

  query_frequency      = var.query_frequency      # Default: PT5H
  query_period         = var.query_period         # Default: PT5H
  suppression_duration = var.suppression_duration # Default: PT5H
  suppression_enabled  = var.suppression_enabled  # Default: False

  dynamic "sentinel_entity_mapping" { # var.sentinel_entity_mapping
    for_each = var.sentinel_entity_mapping != null ? var.sentinel_entity_mapping : []
    content {
      column_name = lookup(sentinel_entity_mapping.value, "column_name") # (Required) 
    }
  }

  tactics           = var.tactics
  techniques        = var.techniques
  trigger_operator  = var.trigger_operator  # Default: GreaterThan
  trigger_threshold = var.trigger_threshold # Default: 0
}
