data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_service_fabric_managed_cluster" "this" {

  ########################################
  # required vars
  ########################################
  client_connection_port = var.client_connection_port
  http_gateway_port      = var.http_gateway_port

  dynamic "lb_rule" { # var.lb_rule
    for_each = var.lb_rule != null ? var.lb_rule : []
    content {
      backend_port       = lookup(lb_rule.value, "backend_port")   # (Required) 
      frontend_port      = lookup(lb_rule.value, "frontend_port")  # (Required) 
      probe_protocol     = lookup(lb_rule.value, "probe_protocol") # (Required) 
      probe_request_path = lookup(lb_rule.value, "probe_request_path", null)
      protocol           = lookup(lb_rule.value, "protocol") # (Required) 
    }
  }

  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################

  dynamic "authentication" { # var.authentication
    for_each = var.authentication != null ? var.authentication : []
    content {

      dynamic "active_directory" { # authentication.value.active_directory
        for_each = authentication.value.active_directory != null ? authentication.value.active_directory : []
        content {
          client_application_id  = lookup(active_directory.value, "client_application_id")  # (Required) 
          cluster_application_id = lookup(active_directory.value, "cluster_application_id") # (Required) 
          tenant_id              = lookup(active_directory.value, "tenant_id")              # (Required) 
        }
      }


      dynamic "certificate" { # authentication.value.certificate
        for_each = authentication.value.certificate != null ? authentication.value.certificate : []
        content {
          thumbprint  = lookup(certificate.value, "thumbprint") # (Required) 
          type        = lookup(certificate.value, "type")       # (Required) 
          common_name = lookup(certificate.value, "common_name", null)
        }
      }

    }
  }

  backup_service_enabled = var.backup_service_enabled

  dynamic "custom_fabric_setting" { # var.custom_fabric_setting
    for_each = var.custom_fabric_setting != null ? var.custom_fabric_setting : []
    content {
      parameter = lookup(custom_fabric_setting.value, "parameter") # (Required) 
      section   = lookup(custom_fabric_setting.value, "section")   # (Required) 
      value     = lookup(custom_fabric_setting.value, "value")     # (Required) 
    }
  }

  dns_name            = var.dns_name
  dns_service_enabled = var.dns_service_enabled

  dynamic "node_type" { # var.node_type
    for_each = var.node_type != null ? var.node_type : []
    content {
      application_port_range            = lookup(node_type.value, "application_port_range") # (Required) 
      data_disk_size_gb                 = lookup(node_type.value, "data_disk_size_gb")      # (Required) 
      ephemeral_port_range              = lookup(node_type.value, "ephemeral_port_range")   # (Required) 
      name                              = node_type.key
      vm_image_offer                    = lookup(node_type.value, "vm_image_offer")     # (Required) 
      vm_image_publisher                = lookup(node_type.value, "vm_image_publisher") # (Required) 
      vm_image_sku                      = lookup(node_type.value, "vm_image_sku")       # (Required) 
      vm_image_version                  = lookup(node_type.value, "vm_image_version")   # (Required) 
      vm_instance_count                 = lookup(node_type.value, "vm_instance_count")  # (Required) 
      vm_size                           = lookup(node_type.value, "vm_size")            # (Required) 
      capacities                        = lookup(node_type.value, "capacities", null)
      data_disk_type                    = lookup(node_type.value, "data_disk_type", "Standard_LRS")
      multiple_placement_groups_enabled = lookup(node_type.value, "multiple_placement_groups_enabled", null)
      placement_properties              = lookup(node_type.value, "placement_properties", null)
      primary                           = lookup(node_type.value, "primary", null)
      stateless                         = lookup(node_type.value, "stateless", null)

      dynamic "vm_secrets" { # node_type.value.vm_secrets
        for_each = node_type.value.vm_secrets != null ? node_type.value.vm_secrets : []
        content {
          certificates = lookup(vm_secrets.value, "certificates") # (Required) 
          vault_id     = lookup(vm_secrets.value, "vault_id")     # (Required) 
        }
      }

    }
  }

  password     = var.password
  sku          = var.sku # Default: Basic
  tags         = var.tags
  upgrade_wave = var.upgrade_wave # Default: Wave0
  username     = var.username
}
