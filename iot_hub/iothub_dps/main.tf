data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_iothub_dps" "this" {

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
  allocation_policy      = var.allocation_policy      # Default: Hashed
  data_residency_enabled = var.data_residency_enabled # Default: False

  dynamic "linked_hub" { # var.linked_hub
    for_each = var.linked_hub != null ? var.linked_hub : []
    content {
      connection_string       = lookup(linked_hub.value, "connection_string") # (Required) 
      location                = lookup(linked_hub.value, "location")          # (Required) 
      apply_allocation_policy = lookup(linked_hub.value, "apply_allocation_policy", true)
      allocation_weight       = lookup(linked_hub.value, "allocation_weight", "1")
      hostname                = lookup(linked_hub.value, "hostname", null)
    }
  }

  public_network_access_enabled = var.public_network_access_enabled # Default: True

  dynamic "ip_filter_rule" { # var.ip_filter_rule
    for_each = var.ip_filter_rule != null ? var.ip_filter_rule : []
    content {
      name    = ip_filter_rule.key
      ip_mask = lookup(ip_filter_rule.value, "ip_mask") # (Required) 
      action  = lookup(ip_filter_rule.value, "action")  # (Required) possible values: Accept | Reject
      target  = lookup(ip_filter_rule.value, "target", null)
    }
  }

  tags = var.tags
}
