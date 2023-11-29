

resource "azurerm_machine_learning_compute_instance" "this" {

  ########################################
  # required vars
  ########################################
  name                          = var.name
  location                      = var.location
  machine_learning_workspace_id = var.machine_learning_workspace_id
  virtual_machine_size          = var.virtual_machine_size

  ########################################
  # optional vars
  ########################################
  authorization_type = var.authorization_type

  dynamic "assign_to_user" { # var.assign_to_user
    for_each = var.assign_to_user != null ? var.assign_to_user : []
    content {
      object_id = lookup(assign_to_user.value, "object_id", null)
      tenant_id = lookup(assign_to_user.value, "tenant_id", null)
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

  local_auth_enabled = var.local_auth_enabled # Default: True

  dynamic "ssh" { # var.ssh
    for_each = var.ssh != null ? var.ssh : []
    content {
      public_key = lookup(ssh.value, "public_key") # (Required) 
    }
  }

  subnet_resource_id     = var.subnet_resource_id
  node_public_ip_enabled = var.node_public_ip_enabled # Default: True
  tags                   = var.tags
}
