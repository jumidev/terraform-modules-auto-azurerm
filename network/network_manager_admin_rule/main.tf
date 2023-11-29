

resource "azurerm_network_manager_admin_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  admin_rule_collection_id = var.admin_rule_collection_id
  action                   = var.action
  direction                = var.direction
  priority                 = var.priority
  protocol                 = var.protocol

  ########################################
  # optional vars
  ########################################
  description             = var.description
  destination_port_ranges = var.destination_port_ranges

  dynamic "destination" { # var.destination
    for_each = var.destination != null ? var.destination : []
    content {
      address_prefix      = lookup(destination.value, "address_prefix")      # (Required) 
      address_prefix_type = lookup(destination.value, "address_prefix_type") # (Required) possible values: IPPrefix | ServiceTag
    }
  }

  source_port_ranges = var.source_port_ranges

  dynamic "source" { # var.source
    for_each = var.source != null ? var.source : []
    content {
      address_prefix      = lookup(source.value, "address_prefix")      # (Required) 
      address_prefix_type = lookup(source.value, "address_prefix_type") # (Required) possible values: IPPrefix | ServiceTag
    }
  }

}
