data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_kubernetes_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name

  default_node_pool {
    name                          = lookup(default_node_pool.value, "name")    # (Required) 
    vm_size                       = lookup(default_node_pool.value, "vm_size") # (Required) 
    capacity_reservation_group_id = lookup(default_node_pool.value, "capacity_reservation_group_id", null)
    custom_ca_trust_enabled       = lookup(default_node_pool.value, "custom_ca_trust_enabled", null)
    enable_auto_scaling           = lookup(default_node_pool.value, "enable_auto_scaling", null)
    enable_host_encryption        = lookup(default_node_pool.value, "enable_host_encryption", null)
    enable_node_public_ip         = lookup(default_node_pool.value, "enable_node_public_ip", null)
    gpu_instance                  = lookup(default_node_pool.value, "gpu_instance", null)
    host_group_id                 = lookup(default_node_pool.value, "host_group_id", null)
    kubelet_config                = lookup(default_node_pool.value, "kubelet_config", null)
    linux_os_config               = lookup(default_node_pool.value, "linux_os_config", null)
    fips_enabled                  = lookup(default_node_pool.value, "fips_enabled", null)
    kubelet_disk_type             = lookup(default_node_pool.value, "kubelet_disk_type", null)
    max_pods                      = lookup(default_node_pool.value, "max_pods", null)
    message_of_the_day            = lookup(default_node_pool.value, "message_of_the_day", null)
    node_network_profile          = lookup(default_node_pool.value, "node_network_profile", null)
    node_public_ip_prefix_id      = lookup(default_node_pool.value, "node_public_ip_prefix_id", null)
    node_labels                   = lookup(default_node_pool.value, "node_labels", null)
    node_taints                   = lookup(default_node_pool.value, "node_taints", null)
    only_critical_addons_enabled  = lookup(default_node_pool.value, "only_critical_addons_enabled", null)
    orchestrator_version          = lookup(default_node_pool.value, "orchestrator_version", null)
    os_disk_size_gb               = lookup(default_node_pool.value, "os_disk_size_gb", null)
    os_disk_type                  = lookup(default_node_pool.value, "os_disk_type", "Managed")
    os_sku                        = lookup(default_node_pool.value, "os_sku", "Ubuntu")
    pod_subnet_id                 = lookup(default_node_pool.value, "pod_subnet_id", null)
    proximity_placement_group_id  = lookup(default_node_pool.value, "proximity_placement_group_id", null)
    scale_down_mode               = lookup(default_node_pool.value, "scale_down_mode", "Delete")
    snapshot_id                   = lookup(default_node_pool.value, "snapshot_id", null)
    temporary_name_for_rotation   = lookup(default_node_pool.value, "temporary_name_for_rotation", null)
    type                          = lookup(default_node_pool.value, "type", "VirtualMachineScaleSets")
    tags                          = lookup(default_node_pool.value, "tags", null)
    ultra_ssd_enabled             = lookup(default_node_pool.value, "ultra_ssd_enabled", false)
    upgrade_settings              = lookup(default_node_pool.value, "upgrade_settings", null)
    vnet_subnet_id                = lookup(default_node_pool.value, "vnet_subnet_id", null)
    workload_runtime              = lookup(default_node_pool.value, "workload_runtime", null)
    zones                         = lookup(default_node_pool.value, "zones", null)
    max_count                     = lookup(default_node_pool.value, "max_count", null)
    min_count                     = lookup(default_node_pool.value, "min_count", null)
    node_count                    = lookup(default_node_pool.value, "node_count", null)
  }


  ########################################
  # optional vars
  ########################################
  dns_prefix                 = var.dns_prefix
  dns_prefix_private_cluster = var.dns_prefix_private_cluster

  dynamic "aci_connector_linux" { # var.aci_connector_linux
    for_each = var.aci_connector_linux != null ? var.aci_connector_linux : []
    content {
      subnet_name = lookup(aci_connector_linux.value, "subnet_name") # (Required) 
    }
  }

  automatic_channel_upgrade = var.automatic_channel_upgrade

  dynamic "api_server_access_profile" { # var.api_server_access_profile
    for_each = var.api_server_access_profile != null ? var.api_server_access_profile : []
    content {
      authorized_ip_ranges     = lookup(api_server_access_profile.value, "authorized_ip_ranges", null)
      subnet_id                = lookup(api_server_access_profile.value, "subnet_id", null)
      vnet_integration_enabled = lookup(api_server_access_profile.value, "vnet_integration_enabled", null)
    }
  }


  dynamic "auto_scaler_profile" { # var.auto_scaler_profile
    for_each = var.auto_scaler_profile != null ? var.auto_scaler_profile : []
    content {
      balance_similar_node_groups      = lookup(auto_scaler_profile.value, "balance_similar_node_groups", false)
      expander                         = lookup(auto_scaler_profile.value, "expander", "random")
      max_graceful_termination_sec     = lookup(auto_scaler_profile.value, "max_graceful_termination_sec", 600)
      max_node_provisioning_time       = lookup(auto_scaler_profile.value, "max_node_provisioning_time", "15m")
      max_unready_nodes                = lookup(auto_scaler_profile.value, "max_unready_nodes", 3)
      max_unready_percentage           = lookup(auto_scaler_profile.value, "max_unready_percentage", "45")
      new_pod_scale_up_delay           = lookup(auto_scaler_profile.value, "new_pod_scale_up_delay", "10s")
      scale_down_delay_after_add       = lookup(auto_scaler_profile.value, "scale_down_delay_after_add", "10m")
      scale_down_delay_after_delete    = lookup(auto_scaler_profile.value, "scale_down_delay_after_delete", "scan_interval")
      scale_down_delay_after_failure   = lookup(auto_scaler_profile.value, "scale_down_delay_after_failure", "3m")
      scan_interval                    = lookup(auto_scaler_profile.value, "scan_interval", "10s")
      scale_down_unneeded              = lookup(auto_scaler_profile.value, "scale_down_unneeded", "10m")
      scale_down_unready               = lookup(auto_scaler_profile.value, "scale_down_unready", "20m")
      scale_down_utilization_threshold = lookup(auto_scaler_profile.value, "scale_down_utilization_threshold", "0.5")
      empty_bulk_delete_max            = lookup(auto_scaler_profile.value, "empty_bulk_delete_max", 10)
      skip_nodes_with_local_storage    = lookup(auto_scaler_profile.value, "skip_nodes_with_local_storage", true)
      skip_nodes_with_system_pods      = lookup(auto_scaler_profile.value, "skip_nodes_with_system_pods", true)
    }
  }


  dynamic "azure_active_directory_role_based_access_control" { # var.azure_active_directory_role_based_access_control
    for_each = var.azure_active_directory_role_based_access_control != null ? var.azure_active_directory_role_based_access_control : []
    content {
      managed                = lookup(azure_active_directory_role_based_access_control.value, "managed", null)
      tenant_id              = lookup(azure_active_directory_role_based_access_control.value, "tenant_id", null)
      admin_group_object_ids = lookup(azure_active_directory_role_based_access_control.value, "admin_group_object_ids", null)
      azure_rbac_enabled     = lookup(azure_active_directory_role_based_access_control.value, "azure_rbac_enabled", null)
      client_app_id          = lookup(azure_active_directory_role_based_access_control.value, "client_app_id", null)
      server_app_id          = lookup(azure_active_directory_role_based_access_control.value, "server_app_id", null)
      server_app_secret      = lookup(azure_active_directory_role_based_access_control.value, "server_app_secret", null)
    }
  }

  azure_policy_enabled = var.azure_policy_enabled

  dynamic "confidential_computing" { # var.confidential_computing
    for_each = var.confidential_computing != null ? var.confidential_computing : []
    content {
      sgx_quote_helper_enabled = lookup(confidential_computing.value, "sgx_quote_helper_enabled") # (Required) 
    }
  }

  custom_ca_trust_certificates_base64 = var.custom_ca_trust_certificates_base64
  disk_encryption_set_id              = var.disk_encryption_set_id
  edge_zone                           = var.edge_zone
  http_application_routing_enabled    = var.http_application_routing_enabled

  dynamic "http_proxy_config" { # var.http_proxy_config
    for_each = var.http_proxy_config != null ? var.http_proxy_config : []
    content {
      http_proxy  = lookup(http_proxy_config.value, "http_proxy", null)
      https_proxy = lookup(http_proxy_config.value, "https_proxy", null)
      no_proxy    = lookup(http_proxy_config.value, "no_proxy", null)
      trusted_ca  = lookup(http_proxy_config.value, "trusted_ca", null)
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  image_cleaner_enabled        = var.image_cleaner_enabled
  image_cleaner_interval_hours = var.image_cleaner_interval_hours # Default: 48

  dynamic "ingress_application_gateway" { # var.ingress_application_gateway
    for_each = var.ingress_application_gateway != null ? var.ingress_application_gateway : []
    content {
      gateway_id   = lookup(ingress_application_gateway.value, "gateway_id", null)
      gateway_name = lookup(ingress_application_gateway.value, "gateway_name", null)
      subnet_cidr  = lookup(ingress_application_gateway.value, "subnet_cidr", null)
      subnet_id    = lookup(ingress_application_gateway.value, "subnet_id", null)
    }
  }


  dynamic "key_management_service" { # var.key_management_service
    for_each = var.key_management_service != null ? var.key_management_service : []
    content {
      key_vault_key_id         = lookup(key_management_service.value, "key_vault_key_id") # (Required) 
      key_vault_network_access = lookup(key_management_service.value, "key_vault_network_access", "Public")
    }
  }


  dynamic "key_vault_secrets_provider" { # var.key_vault_secrets_provider
    for_each = var.key_vault_secrets_provider != null ? var.key_vault_secrets_provider : []
    content {
      secret_rotation_enabled  = lookup(key_vault_secrets_provider.value, "secret_rotation_enabled", null)
      secret_rotation_interval = lookup(key_vault_secrets_provider.value, "secret_rotation_interval", "2m")
    }
  }


  dynamic "kubelet_identity" { # var.kubelet_identity
    for_each = var.kubelet_identity != null ? var.kubelet_identity : []
    content {
      client_id                 = lookup(kubelet_identity.value, "client_id", null)
      object_id                 = lookup(kubelet_identity.value, "object_id", null)
      user_assigned_identity_id = lookup(kubelet_identity.value, "user_assigned_identity_id", null)
    }
  }

  kubernetes_version = var.kubernetes_version

  dynamic "linux_profile" { # var.linux_profile
    for_each = var.linux_profile != null ? var.linux_profile : []
    content {
      admin_username = lookup(linux_profile.value, "admin_username") # (Required) 

      dynamic "ssh_key" { # linux_profile.value.ssh_key
        for_each = linux_profile.value.ssh_key != null ? linux_profile.value.ssh_key : []
        content {
          key_data = lookup(ssh_key.value, "key_data") # (Required) 
        }
      }

    }
  }

  local_account_disabled = var.local_account_disabled

  dynamic "maintenance_window" { # var.maintenance_window
    for_each = var.maintenance_window != null ? var.maintenance_window : []
    content {

      dynamic "allowed" { # maintenance_window.value.allowed
        for_each = maintenance_window.value.allowed != null ? maintenance_window.value.allowed : []
        content {
          day   = lookup(allowed.value, "day")   # (Required) possible values: Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday
          hours = lookup(allowed.value, "hours") # (Required) possible values: 0 | 23
        }
      }


      dynamic "not_allowed" { # maintenance_window.value.not_allowed
        for_each = maintenance_window.value.not_allowed != null ? maintenance_window.value.not_allowed : []
        content {
          end   = lookup(not_allowed.value, "end")   # (Required) 
          start = lookup(not_allowed.value, "start") # (Required) 
        }
      }

    }
  }


  dynamic "maintenance_window_auto_upgrade" { # var.maintenance_window_auto_upgrade
    for_each = var.maintenance_window_auto_upgrade != null ? var.maintenance_window_auto_upgrade : []
    content {
      frequency    = lookup(maintenance_window_auto_upgrade.value, "frequency") # (Required) 
      interval     = lookup(maintenance_window_auto_upgrade.value, "interval")  # (Required) 
      duration     = lookup(maintenance_window_auto_upgrade.value, "duration")  # (Required) 
      day_of_week  = lookup(maintenance_window_auto_upgrade.value, "day_of_week", null)
      day_of_month = lookup(maintenance_window_auto_upgrade.value, "day_of_month", null)
      week_index   = lookup(maintenance_window_auto_upgrade.value, "week_index", null)
      start_time   = lookup(maintenance_window_auto_upgrade.value, "start_time", null)
      utc_offset   = lookup(maintenance_window_auto_upgrade.value, "utc_offset", null)
      start_date   = lookup(maintenance_window_auto_upgrade.value, "start_date", null)

      dynamic "not_allowed" { # maintenance_window_auto_upgrade.value.not_allowed
        for_each = maintenance_window_auto_upgrade.value.not_allowed != null ? maintenance_window_auto_upgrade.value.not_allowed : []
        content {
          end   = lookup(not_allowed.value, "end")   # (Required) 
          start = lookup(not_allowed.value, "start") # (Required) 
        }
      }

    }
  }


  dynamic "maintenance_window_node_os" { # var.maintenance_window_node_os
    for_each = var.maintenance_window_node_os != null ? var.maintenance_window_node_os : []
    content {
      frequency    = lookup(maintenance_window_node_os.value, "frequency") # (Required) 
      interval     = lookup(maintenance_window_node_os.value, "interval")  # (Required) 
      duration     = lookup(maintenance_window_node_os.value, "duration")  # (Required) 
      day_of_week  = lookup(maintenance_window_node_os.value, "day_of_week", null)
      day_of_month = lookup(maintenance_window_node_os.value, "day_of_month", null)
      week_index   = lookup(maintenance_window_node_os.value, "week_index", null)
      start_time   = lookup(maintenance_window_node_os.value, "start_time", null)
      utc_offset   = lookup(maintenance_window_node_os.value, "utc_offset", null)
      start_date   = lookup(maintenance_window_node_os.value, "start_date", null)

      dynamic "not_allowed" { # maintenance_window_node_os.value.not_allowed
        for_each = maintenance_window_node_os.value.not_allowed != null ? maintenance_window_node_os.value.not_allowed : []
        content {
          end   = lookup(not_allowed.value, "end")   # (Required) 
          start = lookup(not_allowed.value, "start") # (Required) 
        }
      }

    }
  }


  dynamic "microsoft_defender" { # var.microsoft_defender
    for_each = var.microsoft_defender != null ? var.microsoft_defender : []
    content {
      log_analytics_workspace_id = lookup(microsoft_defender.value, "log_analytics_workspace_id") # (Required) 
    }
  }


  dynamic "monitor_metrics" { # var.monitor_metrics
    for_each = var.monitor_metrics != null ? var.monitor_metrics : []
    content {
      annotations_allowed = lookup(monitor_metrics.value, "annotations_allowed", null)
      labels_allowed      = lookup(monitor_metrics.value, "labels_allowed", null)
    }
  }


  dynamic "network_profile" { # var.network_profile
    for_each = var.network_profile != null ? var.network_profile : []
    content {
      network_plugin      = lookup(network_profile.value, "network_plugin") # (Required) 
      network_mode        = lookup(network_profile.value, "network_mode", null)
      network_policy      = lookup(network_profile.value, "network_policy", null)
      dns_service_ip      = lookup(network_profile.value, "dns_service_ip", null)
      docker_bridge_cidr  = lookup(network_profile.value, "docker_bridge_cidr", null)
      ebpf_data_plane     = lookup(network_profile.value, "ebpf_data_plane", null)
      network_plugin_mode = lookup(network_profile.value, "network_plugin_mode", null)
      outbound_type       = lookup(network_profile.value, "outbound_type", "loadBalancer")
      pod_cidr            = lookup(network_profile.value, "pod_cidr", null)
      pod_cidrs           = lookup(network_profile.value, "pod_cidrs", null)
      service_cidr        = lookup(network_profile.value, "service_cidr", null)
      service_cidrs       = lookup(network_profile.value, "service_cidrs", null)
      ip_versions         = lookup(network_profile.value, "ip_versions", null)
      load_balancer_sku   = lookup(network_profile.value, "load_balancer_sku", "standard")

      dynamic "load_balancer_profile" { # network_profile.value.load_balancer_profile
        for_each = network_profile.value.load_balancer_profile != null ? network_profile.value.load_balancer_profile : []
        content {
          idle_timeout_in_minutes     = lookup(load_balancer_profile.value, "idle_timeout_in_minutes", 30)
          managed_outbound_ip_count   = lookup(load_balancer_profile.value, "managed_outbound_ip_count", null)
          managed_outbound_ipv6_count = lookup(load_balancer_profile.value, "managed_outbound_ipv6_count", null)
          outbound_ip_address_ids     = lookup(load_balancer_profile.value, "outbound_ip_address_ids", null)
          outbound_ip_prefix_ids      = lookup(load_balancer_profile.value, "outbound_ip_prefix_ids", null)
          outbound_ports_allocated    = lookup(load_balancer_profile.value, "outbound_ports_allocated", 0)
        }
      }


      dynamic "nat_gateway_profile" { # network_profile.value.nat_gateway_profile
        for_each = network_profile.value.nat_gateway_profile != null ? network_profile.value.nat_gateway_profile : []
        content {
          idle_timeout_in_minutes   = lookup(nat_gateway_profile.value, "idle_timeout_in_minutes", 4)
          managed_outbound_ip_count = lookup(nat_gateway_profile.value, "managed_outbound_ip_count", null)
        }
      }

    }
  }

  node_os_channel_upgrade = var.node_os_channel_upgrade
  node_resource_group     = var.node_resource_group
  oidc_issuer_enabled     = var.oidc_issuer_enabled

  dynamic "oms_agent" { # var.oms_agent
    for_each = var.oms_agent != null ? var.oms_agent : []
    content {
      log_analytics_workspace_id      = lookup(oms_agent.value, "log_analytics_workspace_id") # (Required) 
      msi_auth_for_monitoring_enabled = lookup(oms_agent.value, "msi_auth_for_monitoring_enabled", null)
    }
  }

  open_service_mesh_enabled           = var.open_service_mesh_enabled
  private_cluster_enabled             = var.private_cluster_enabled # Default: False
  private_dns_zone_id                 = var.private_dns_zone_id
  private_cluster_public_fqdn_enabled = var.private_cluster_public_fqdn_enabled # Default: False

  dynamic "service_mesh_profile" { # var.service_mesh_profile
    for_each = var.service_mesh_profile != null ? var.service_mesh_profile : []
    content {
      mode                             = lookup(service_mesh_profile.value, "mode") # (Required) 
      internal_ingress_gateway_enabled = lookup(service_mesh_profile.value, "internal_ingress_gateway_enabled", null)
      external_ingress_gateway_enabled = lookup(service_mesh_profile.value, "external_ingress_gateway_enabled", null)
    }
  }


  dynamic "workload_autoscaler_profile" { # var.workload_autoscaler_profile
    for_each = var.workload_autoscaler_profile != null ? var.workload_autoscaler_profile : []
    content {
      keda_enabled                    = lookup(workload_autoscaler_profile.value, "keda_enabled", null)
      vertical_pod_autoscaler_enabled = lookup(workload_autoscaler_profile.value, "vertical_pod_autoscaler_enabled", null)
    }
  }

  workload_identity_enabled         = var.workload_identity_enabled         # Default: False
  public_network_access_enabled     = var.public_network_access_enabled     # Default: True
  role_based_access_control_enabled = var.role_based_access_control_enabled # Default: True
  run_command_enabled               = var.run_command_enabled               # Default: True

  dynamic "service_principal" { # var.service_principal
    for_each = var.service_principal != null ? var.service_principal : []
    content {
      client_id     = lookup(service_principal.value, "client_id")     # (Required) 
      client_secret = lookup(service_principal.value, "client_secret") # (Required) 
    }
  }

  sku_tier = var.sku_tier # Default: Free

  dynamic "storage_profile" { # var.storage_profile
    for_each = var.storage_profile != null ? var.storage_profile : []
    content {
      blob_driver_enabled         = lookup(storage_profile.value, "blob_driver_enabled", false)
      disk_driver_enabled         = lookup(storage_profile.value, "disk_driver_enabled", true)
      disk_driver_version         = lookup(storage_profile.value, "disk_driver_version", "v1")
      file_driver_enabled         = lookup(storage_profile.value, "file_driver_enabled", true)
      snapshot_controller_enabled = lookup(storage_profile.value, "snapshot_controller_enabled", true)
    }
  }

  support_plan = var.support_plan # Default: KubernetesOfficial
  tags         = var.tags

  dynamic "web_app_routing" { # var.web_app_routing
    for_each = var.web_app_routing != null ? var.web_app_routing : []
    content {
      dns_zone_id = lookup(web_app_routing.value, "dns_zone_id") # (Required) 
    }
  }


  dynamic "windows_profile" { # var.windows_profile
    for_each = var.windows_profile != null ? var.windows_profile : []
    content {
      admin_username = lookup(windows_profile.value, "admin_username") # (Required) 
      admin_password = lookup(windows_profile.value, "admin_password", null)
      license        = lookup(windows_profile.value, "license", null)

      dynamic "gmsa" { # windows_profile.value.gmsa
        for_each = windows_profile.value.gmsa != null ? windows_profile.value.gmsa : []
        content {
          dns_server  = lookup(gmsa.value, "dns_server")  # (Required) 
          root_domain = lookup(gmsa.value, "root_domain") # (Required) 
        }
      }

    }
  }

}
