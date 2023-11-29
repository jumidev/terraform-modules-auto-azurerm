data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}


resource "azurerm_api_management_logger" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  api_management_name = data.azurerm_api_management.this.name

  ########################################
  # optional vars
  ########################################

  dynamic "application_insights" { # var.application_insights
    for_each = var.application_insights != null ? var.application_insights : []
    content {
      instrumentation_key = lookup(application_insights.value, "instrumentation_key") # (Required) 
    }
  }

  buffered    = var.buffered # Default: True
  description = var.description

  dynamic "eventhub" { # var.eventhub
    for_each = var.eventhub != null ? var.eventhub : []
    content {
      name                             = eventhub.key
      connection_string                = lookup(eventhub.value, "connection_string", null)
      user_assigned_identity_client_id = lookup(eventhub.value, "user_assigned_identity_client_id", null)
      endpoint_uri                     = lookup(eventhub.value, "endpoint_uri", null)
    }
  }

  resource_id = var.resource_id
}
