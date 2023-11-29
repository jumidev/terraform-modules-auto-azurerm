data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_eventgrid_topic" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  input_schema = var.input_schema # Default: EventGridSchema

  dynamic "input_mapping_fields" { # var.input_mapping_fields
    for_each = var.input_mapping_fields != null ? var.input_mapping_fields : []
    content {
      topic        = lookup(input_mapping_fields.value, "topic", null)
      event_type   = lookup(input_mapping_fields.value, "event_type", null)
      event_time   = lookup(input_mapping_fields.value, "event_time", null)
      data_version = lookup(input_mapping_fields.value, "data_version", null)
      subject      = lookup(input_mapping_fields.value, "subject", null)
    }
  }


  dynamic "input_mapping_default_values" { # var.input_mapping_default_values
    for_each = var.input_mapping_default_values != null ? var.input_mapping_default_values : []
    content {
      event_type   = lookup(input_mapping_default_values.value, "event_type", null)
      data_version = lookup(input_mapping_default_values.value, "data_version", null)
      subject      = lookup(input_mapping_default_values.value, "subject", null)
    }
  }

  public_network_access_enabled = var.public_network_access_enabled # Default: True
  local_auth_enabled            = var.local_auth_enabled            # Default: True

  dynamic "inbound_ip_rule" { # var.inbound_ip_rule
    for_each = var.inbound_ip_rule != null ? var.inbound_ip_rule : []
    content {
      ip_mask = lookup(inbound_ip_rule.value, "ip_mask") # (Required) 
      action  = lookup(inbound_ip_rule.value, "action", "Allow")
    }
  }

  tags = var.tags
}
