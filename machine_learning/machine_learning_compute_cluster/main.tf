

resource "azurerm_machine_learning_compute_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                          = var.name
  machine_learning_workspace_id = var.machine_learning_workspace_id
  location                      = var.location
  vm_priority                   = var.vm_priority
  vm_size                       = var.vm_size

  scale_settings {
    max_node_count                       = lookup(scale_settings.value, "max_node_count")                       # (Required) 
    min_node_count                       = lookup(scale_settings.value, "min_node_count")                       # (Required) 
    scale_down_nodes_after_idle_duration = lookup(scale_settings.value, "scale_down_nodes_after_idle_duration") # (Required) 
  }


  ########################################
  # optional vars
  ########################################

  dynamic "ssh" { # var.ssh
    for_each = var.ssh != null ? var.ssh : []
    content {
      admin_username = lookup(ssh.value, "admin_username") # (Required) 
      admin_password = lookup(ssh.value, "admin_password", null)
      key_value      = lookup(ssh.value, "key_value", null)
    }
  }

  description = var.description

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  local_auth_enabled        = var.local_auth_enabled     # Default: True
  node_public_ip_enabled    = var.node_public_ip_enabled # Default: True
  ssh_public_access_enabled = var.ssh_public_access_enabled
  subnet_resource_id        = var.subnet_resource_id
  tags                      = var.tags
}
