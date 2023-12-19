

resource "azurerm_network_manager_connectivity_configuration" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  network_manager_id = var.network_manager_id

  dynamic "applies_to_group" { # var.applies_to_group
    for_each = var.applies_to_group != null ? var.applies_to_group : []
    content {
      group_connectivity  = lookup(applies_to_group.value, "group_connectivity") # (Required) possible values: None | DirectlyConnected
      network_group_id    = lookup(applies_to_group.value, "network_group_id")   # (Required) 
      global_mesh_enabled = lookup(applies_to_group.value, "global_mesh_enabled", null)
      use_hub_gateway     = lookup(applies_to_group.value, "use_hub_gateway", null)
    }
  }

  connectivity_topology = var.connectivity_topology

  ########################################
  # optional vars
  ########################################
  delete_existing_peering_enabled = var.delete_existing_peering_enabled
  description                     = var.description
  global_mesh_enabled             = var.global_mesh_enabled

  dynamic "hub" { # var.hub
    for_each = var.hub != null ? var.hub : []
    content {
      resource_id   = lookup(hub.value, "resource_id")   # (Required) 
      resource_type = lookup(hub.value, "resource_type") # (Required) 
    }
  }

}
