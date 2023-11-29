data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_eventgrid_system_topic" "this" {

  ########################################
  # required vars
  ########################################
  location               = var.location
  name                   = var.name
  resource_group_name    = data.azurerm_resource_group.this.name
  source_arm_resource_id = var.source_arm_resource_id
  topic_type             = var.topic_type

  ########################################
  # optional vars
  ########################################

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
      tags         = lookup(identity.value, "tags", null)
    }
  }

}
