data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_nginx_deployment" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  name                = var.name
  location            = var.location
  sku                 = var.sku

  ########################################
  # optional vars
  ########################################
  managed_resource_group   = var.managed_resource_group
  capacity                 = var.capacity # Default: 20
  diagnose_support_enabled = var.diagnose_support_enabled
  email                    = var.email

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: UserAssigned | identity_ids
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }


  dynamic "frontend_private" { # var.frontend_private
    for_each = var.frontend_private != null ? var.frontend_private : []
    content {
      allocation_method = lookup(frontend_private.value, "allocation_method") # (Required) possible values: Static | Dynamic
      ip_address        = lookup(frontend_private.value, "ip_address")        # (Required) 
      subnet_id         = lookup(frontend_private.value, "subnet_id")         # (Required) 
    }
  }


  dynamic "frontend_public" { # var.frontend_public
    for_each = var.frontend_public != null ? var.frontend_public : []
    content {
      ip_address = lookup(frontend_public.value, "ip_address", null)
    }
  }


  dynamic "logging_storage_account" { # var.logging_storage_account
    for_each = var.logging_storage_account != null ? var.logging_storage_account : []
    content {
      container_name = lookup(logging_storage_account.value, "container_name", null)
      name           = logging_storage_account.key
    }
  }


  dynamic "network_interface" { # var.network_interface
    for_each = var.network_interface != null ? var.network_interface : []
    content {
      subnet_id = lookup(network_interface.value, "subnet_id") # (Required) 
    }
  }

  tags = var.tags
}
