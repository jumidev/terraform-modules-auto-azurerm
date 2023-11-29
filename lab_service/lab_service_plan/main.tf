data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_lab_service_plan" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  allowed_regions     = var.allowed_regions

  ########################################
  # optional vars
  ########################################

  dynamic "default_auto_shutdown" { # var.default_auto_shutdown
    for_each = var.default_auto_shutdown != null ? var.default_auto_shutdown : []
    content {
      disconnect_delay = lookup(default_auto_shutdown.value, "disconnect_delay", null)
      idle_delay       = lookup(default_auto_shutdown.value, "idle_delay", null)
      no_connect_delay = lookup(default_auto_shutdown.value, "no_connect_delay", null)
      shutdown_on_idle = lookup(default_auto_shutdown.value, "shutdown_on_idle", null)
    }
  }


  dynamic "default_connection" { # var.default_connection
    for_each = var.default_connection != null ? var.default_connection : []
    content {
      client_rdp_access = lookup(default_connection.value, "client_rdp_access", null)
      client_ssh_access = lookup(default_connection.value, "client_ssh_access", null)
      web_rdp_access    = lookup(default_connection.value, "web_rdp_access", null)
      web_ssh_access    = lookup(default_connection.value, "web_ssh_access", null)
    }
  }

  default_network_subnet_id = var.default_network_subnet_id
  shared_gallery_id         = var.shared_gallery_id

  dynamic "support" { # var.support
    for_each = var.support != null ? var.support : []
    content {
      email        = lookup(support.value, "email", null)
      instructions = lookup(support.value, "instructions", null)
      phone        = lookup(support.value, "phone", null)
      url          = lookup(support.value, "url", null)
    }
  }

  tags = var.tags
}
