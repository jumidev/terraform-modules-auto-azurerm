data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_virtual_desktop_host_pool" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  type                = var.type
  load_balancer_type  = var.load_balancer_type

  ########################################
  # optional vars
  ########################################
  friendly_name                    = var.friendly_name
  description                      = var.description
  validate_environment             = var.validate_environment # Default: False
  start_vm_on_connect              = var.start_vm_on_connect  # Default: False
  custom_rdp_properties            = var.custom_rdp_properties
  personal_desktop_assignment_type = var.personal_desktop_assignment_type
  maximum_sessions_allowed         = var.maximum_sessions_allowed
  preferred_app_group_type         = var.preferred_app_group_type # Default: Desktop

  dynamic "scheduled_agent_updates" { # var.scheduled_agent_updates
    for_each = var.scheduled_agent_updates != null ? var.scheduled_agent_updates : []
    content {
      enabled                   = lookup(scheduled_agent_updates.value, "enabled", false)
      timezone                  = lookup(scheduled_agent_updates.value, "timezone", "UTC")
      use_session_host_timezone = lookup(scheduled_agent_updates.value, "use_session_host_timezone", false)
      schedule                  = lookup(scheduled_agent_updates.value, "schedule", null)
    }
  }

  tags = var.tags
}
