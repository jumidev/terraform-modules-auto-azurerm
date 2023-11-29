data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_lab_service_lab" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  security {
    open_access_enabled = lookup(security.value, "open_access_enabled") # (Required) 
  }

  title = var.title

  virtual_machine {
    admin_user                                  = lookup(virtual_machine.value, "admin_user")      # (Required) 
    image_reference                             = lookup(virtual_machine.value, "image_reference") # (Required) 
    sku                                         = lookup(virtual_machine.value, "sku")             # (Required) 
    additional_capability_gpu_drivers_installed = lookup(virtual_machine.value, "additional_capability_gpu_drivers_installed", false)
    create_option                               = lookup(virtual_machine.value, "create_option", "Image")
    non_admin_user                              = lookup(virtual_machine.value, "non_admin_user", null)
    shared_password_enabled                     = lookup(virtual_machine.value, "shared_password_enabled", false)
    usage_quota                                 = lookup(virtual_machine.value, "usage_quota", "PT0S")
  }


  ########################################
  # optional vars
  ########################################

  dynamic "auto_shutdown" { # var.auto_shutdown
    for_each = var.auto_shutdown != null ? var.auto_shutdown : []
    content {
      disconnect_delay = lookup(auto_shutdown.value, "disconnect_delay", null)
      idle_delay       = lookup(auto_shutdown.value, "idle_delay", null)
      no_connect_delay = lookup(auto_shutdown.value, "no_connect_delay", null)
      shutdown_on_idle = lookup(auto_shutdown.value, "shutdown_on_idle", null)
    }
  }


  dynamic "connection_setting" { # var.connection_setting
    for_each = var.connection_setting != null ? var.connection_setting : []
    content {
      client_rdp_access = lookup(connection_setting.value, "client_rdp_access", null)
      client_ssh_access = lookup(connection_setting.value, "client_ssh_access", null)
    }
  }

  description = var.description
  lab_plan_id = var.lab_plan_id

  dynamic "network" { # var.network
    for_each = var.network != null ? var.network : []
    content {
      subnet_id = lookup(network.value, "subnet_id", null)
    }
  }


  dynamic "roster" { # var.roster
    for_each = var.roster != null ? var.roster : []
    content {
      active_directory_group_id = lookup(roster.value, "active_directory_group_id", null)
      lms_instance              = lookup(roster.value, "lms_instance", null)
      lti_client_id             = lookup(roster.value, "lti_client_id", null)
      lti_context_id            = lookup(roster.value, "lti_context_id", null)
      lti_roster_endpoint       = lookup(roster.value, "lti_roster_endpoint", null)
    }
  }

  tags = var.tags
}
