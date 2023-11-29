data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_service_fabric_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  reliability_level   = var.reliability_level
  management_endpoint = var.management_endpoint

  dynamic "node_type" { # var.node_type
    for_each = var.node_type != null ? var.node_type : []
    content {
      name                        = node_type.key
      placement_properties        = lookup(node_type.value, "placement_properties", null)
      capacities                  = lookup(node_type.value, "capacities", null)
      instance_count              = lookup(node_type.value, "instance_count") # (Required) 
      is_primary                  = lookup(node_type.value, "is_primary")     # (Required) 
      is_stateless                = lookup(node_type.value, "is_stateless", null)
      multiple_availability_zones = lookup(node_type.value, "multiple_availability_zones", null)
      client_endpoint_port        = lookup(node_type.value, "client_endpoint_port") # (Required) 
      http_endpoint_port          = lookup(node_type.value, "http_endpoint_port")   # (Required) 
      durability_level            = lookup(node_type.value, "durability_level", "Bronze")

      dynamic "application_ports" { # node_type.value.application_ports
        for_each = node_type.value.application_ports != null ? node_type.value.application_ports : []
        content {
          start_port = lookup(application_ports.value, "start_port") # (Required) 
          end_port   = lookup(application_ports.value, "end_port")   # (Required) 
        }
      }


      dynamic "ephemeral_ports" { # node_type.value.ephemeral_ports
        for_each = node_type.value.ephemeral_ports != null ? node_type.value.ephemeral_ports : []
        content {
          start_port = lookup(ephemeral_ports.value, "start_port") # (Required) 
          end_port   = lookup(ephemeral_ports.value, "end_port")   # (Required) 
        }
      }

      reverse_proxy_endpoint_port = lookup(node_type.value, "reverse_proxy_endpoint_port", null)
    }
  }

  upgrade_mode = var.upgrade_mode
  vm_image     = var.vm_image

  ########################################
  # optional vars
  ########################################
  cluster_code_version = var.cluster_code_version
  add_on_features      = var.add_on_features

  dynamic "azure_active_directory" { # var.azure_active_directory
    for_each = var.azure_active_directory != null ? var.azure_active_directory : []
    content {
      tenant_id              = lookup(azure_active_directory.value, "tenant_id")              # (Required) 
      cluster_application_id = lookup(azure_active_directory.value, "cluster_application_id") # (Required) 
      client_application_id  = lookup(azure_active_directory.value, "client_application_id")  # (Required) 
    }
  }


  dynamic "certificate_common_names" { # var.certificate_common_names
    for_each = var.certificate_common_names != null ? var.certificate_common_names : []
    content {

      dynamic "common_names" { # certificate_common_names.value.common_names
        for_each = certificate_common_names.value.common_names != null ? certificate_common_names.value.common_names : []
        content {
          certificate_common_name       = lookup(common_names.value, "certificate_common_name") # (Required) 
          certificate_issuer_thumbprint = lookup(common_names.value, "certificate_issuer_thumbprint", null)
        }
      }

      x509_store_name = lookup(certificate_common_names.value, "x509_store_name") # (Required) 
    }
  }


  dynamic "certificate" { # var.certificate
    for_each = var.certificate != null ? var.certificate : []
    content {
      thumbprint           = lookup(certificate.value, "thumbprint") # (Required) 
      thumbprint_secondary = lookup(certificate.value, "thumbprint_secondary", null)
      x509_store_name      = lookup(certificate.value, "x509_store_name") # (Required) 
    }
  }


  dynamic "reverse_proxy_certificate" { # var.reverse_proxy_certificate
    for_each = var.reverse_proxy_certificate != null ? var.reverse_proxy_certificate : []
    content {
      thumbprint           = lookup(reverse_proxy_certificate.value, "thumbprint") # (Required) 
      thumbprint_secondary = lookup(reverse_proxy_certificate.value, "thumbprint_secondary", null)
      x509_store_name      = lookup(reverse_proxy_certificate.value, "x509_store_name") # (Required) 
    }
  }


  dynamic "reverse_proxy_certificate_common_names" { # var.reverse_proxy_certificate_common_names
    for_each = var.reverse_proxy_certificate_common_names != null ? var.reverse_proxy_certificate_common_names : []
    content {

      dynamic "common_names" { # reverse_proxy_certificate_common_names.value.common_names
        for_each = reverse_proxy_certificate_common_names.value.common_names != null ? reverse_proxy_certificate_common_names.value.common_names : []
        content {
          certificate_common_name       = lookup(common_names.value, "certificate_common_name") # (Required) 
          certificate_issuer_thumbprint = lookup(common_names.value, "certificate_issuer_thumbprint", null)
        }
      }

      x509_store_name = lookup(reverse_proxy_certificate_common_names.value, "x509_store_name") # (Required) 
    }
  }


  dynamic "client_certificate_thumbprint" { # var.client_certificate_thumbprint
    for_each = var.client_certificate_thumbprint != null ? var.client_certificate_thumbprint : []
    content {
      thumbprint = lookup(client_certificate_thumbprint.value, "thumbprint") # (Required) 
      is_admin   = lookup(client_certificate_thumbprint.value, "is_admin")   # (Required) 
    }
  }


  dynamic "client_certificate_common_name" { # var.client_certificate_common_name
    for_each = var.client_certificate_common_name != null ? var.client_certificate_common_name : []
    content {
      common_name       = lookup(client_certificate_common_name.value, "common_name") # (Required) 
      issuer_thumbprint = lookup(client_certificate_common_name.value, "issuer_thumbprint", null)
      is_admin          = lookup(client_certificate_common_name.value, "is_admin") # (Required) 
    }
  }


  dynamic "diagnostics_config" { # var.diagnostics_config
    for_each = var.diagnostics_config != null ? var.diagnostics_config : []
    content {
      storage_account_name       = lookup(diagnostics_config.value, "storage_account_name")       # (Required) 
      protected_account_key_name = lookup(diagnostics_config.value, "protected_account_key_name") # (Required) 
      blob_endpoint              = lookup(diagnostics_config.value, "blob_endpoint")              # (Required) 
      queue_endpoint             = lookup(diagnostics_config.value, "queue_endpoint")             # (Required) 
      table_endpoint             = lookup(diagnostics_config.value, "table_endpoint")             # (Required) 
    }
  }


  dynamic "fabric_settings" { # var.fabric_settings
    for_each = var.fabric_settings != null ? var.fabric_settings : []
    content {
      name       = fabric_settings.key
      parameters = lookup(fabric_settings.value, "parameters", null)
    }
  }


  dynamic "upgrade_policy" { # var.upgrade_policy
    for_each = var.upgrade_policy != null ? var.upgrade_policy : []
    content {
      force_restart_enabled             = lookup(upgrade_policy.value, "force_restart_enabled", null)
      health_check_retry_timeout        = lookup(upgrade_policy.value, "health_check_retry_timeout", "00:45:00")
      health_check_stable_duration      = lookup(upgrade_policy.value, "health_check_stable_duration", "00:01:00")
      health_check_wait_duration        = lookup(upgrade_policy.value, "health_check_wait_duration", "00:00:30")
      upgrade_domain_timeout            = lookup(upgrade_policy.value, "upgrade_domain_timeout", "02:00:00")
      upgrade_replica_set_check_timeout = lookup(upgrade_policy.value, "upgrade_replica_set_check_timeout", "10675199.02:48:05.4775807")
      upgrade_timeout                   = lookup(upgrade_policy.value, "upgrade_timeout", "12:00:00")

      dynamic "health_policy" { # upgrade_policy.value.health_policy
        for_each = upgrade_policy.value.health_policy != null ? upgrade_policy.value.health_policy : []
        content {
          max_unhealthy_applications_percent = lookup(health_policy.value, "max_unhealthy_applications_percent", "0")
          max_unhealthy_nodes_percent        = lookup(health_policy.value, "max_unhealthy_nodes_percent", "0")
        }
      }


      dynamic "delta_health_policy" { # upgrade_policy.value.delta_health_policy
        for_each = upgrade_policy.value.delta_health_policy != null ? upgrade_policy.value.delta_health_policy : []
        content {
          max_delta_unhealthy_applications_percent         = lookup(delta_health_policy.value, "max_delta_unhealthy_applications_percent", "0")
          max_delta_unhealthy_nodes_percent                = lookup(delta_health_policy.value, "max_delta_unhealthy_nodes_percent", "0")
          max_upgrade_domain_delta_unhealthy_nodes_percent = lookup(delta_health_policy.value, "max_upgrade_domain_delta_unhealthy_nodes_percent", "0")
        }
      }

    }
  }

  service_fabric_zonal_upgrade_mode = var.service_fabric_zonal_upgrade_mode
  vmss_zonal_upgrade_mode           = var.vmss_zonal_upgrade_mode
  tags                              = var.tags
}
