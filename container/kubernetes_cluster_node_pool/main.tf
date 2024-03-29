

resource "azurerm_kubernetes_cluster_node_pool" "this" {

  ########################################
  # required vars
  ########################################
  name                  = var.name
  kubernetes_cluster_id = var.kubernetes_cluster_id
  vm_size               = var.vm_size

  ########################################
  # optional vars
  ########################################
  capacity_reservation_group_id = var.capacity_reservation_group_id
  custom_ca_trust_enabled       = var.custom_ca_trust_enabled
  enable_auto_scaling           = var.enable_auto_scaling
  enable_host_encryption        = var.enable_host_encryption
  enable_node_public_ip         = var.enable_node_public_ip
  eviction_policy               = var.eviction_policy # Default: Delete
  host_group_id                 = var.host_group_id

  dynamic "kubelet_config" { # var.kubelet_config
    for_each = var.kubelet_config != null ? var.kubelet_config : []
    content {
      allowed_unsafe_sysctls    = lookup(kubelet_config.value, "allowed_unsafe_sysctls", null)
      container_log_max_line    = lookup(kubelet_config.value, "container_log_max_line", null)
      container_log_max_size_mb = lookup(kubelet_config.value, "container_log_max_size_mb", null)
      cpu_cfs_quota_enabled     = lookup(kubelet_config.value, "cpu_cfs_quota_enabled", null)
      cpu_cfs_quota_period      = lookup(kubelet_config.value, "cpu_cfs_quota_period", null)
      cpu_manager_policy        = lookup(kubelet_config.value, "cpu_manager_policy", null)
      image_gc_high_threshold   = lookup(kubelet_config.value, "image_gc_high_threshold", null)
      image_gc_low_threshold    = lookup(kubelet_config.value, "image_gc_low_threshold", null)
      pod_max_pid               = lookup(kubelet_config.value, "pod_max_pid", null)
      topology_manager_policy   = lookup(kubelet_config.value, "topology_manager_policy", null)
    }
  }


  dynamic "linux_os_config" { # var.linux_os_config
    for_each = var.linux_os_config != null ? var.linux_os_config : []
    content {
      swap_file_size_mb = lookup(linux_os_config.value, "swap_file_size_mb", null)

      dynamic "sysctl_config" { # linux_os_config.value.sysctl_config
        for_each = linux_os_config.value.sysctl_config != null ? linux_os_config.value.sysctl_config : []
        content {
          fs_aio_max_nr                      = lookup(sysctl_config.value, "fs_aio_max_nr", null)
          fs_file_max                        = lookup(sysctl_config.value, "fs_file_max", null)
          fs_inotify_max_user_watches        = lookup(sysctl_config.value, "fs_inotify_max_user_watches", null)
          fs_nr_open                         = lookup(sysctl_config.value, "fs_nr_open", null)
          kernel_threads_max                 = lookup(sysctl_config.value, "kernel_threads_max", null)
          net_core_netdev_max_backlog        = lookup(sysctl_config.value, "net_core_netdev_max_backlog", null)
          net_core_optmem_max                = lookup(sysctl_config.value, "net_core_optmem_max", null)
          net_core_rmem_default              = lookup(sysctl_config.value, "net_core_rmem_default", null)
          net_core_rmem_max                  = lookup(sysctl_config.value, "net_core_rmem_max", null)
          net_core_somaxconn                 = lookup(sysctl_config.value, "net_core_somaxconn", null)
          net_core_wmem_default              = lookup(sysctl_config.value, "net_core_wmem_default", null)
          net_core_wmem_max                  = lookup(sysctl_config.value, "net_core_wmem_max", null)
          net_ipv4_ip_local_port_range_max   = lookup(sysctl_config.value, "net_ipv4_ip_local_port_range_max", null)
          net_ipv4_ip_local_port_range_min   = lookup(sysctl_config.value, "net_ipv4_ip_local_port_range_min", null)
          net_ipv4_neigh_default_gc_thresh1  = lookup(sysctl_config.value, "net_ipv4_neigh_default_gc_thresh1", null)
          net_ipv4_neigh_default_gc_thresh2  = lookup(sysctl_config.value, "net_ipv4_neigh_default_gc_thresh2", null)
          net_ipv4_neigh_default_gc_thresh3  = lookup(sysctl_config.value, "net_ipv4_neigh_default_gc_thresh3", null)
          net_ipv4_tcp_fin_timeout           = lookup(sysctl_config.value, "net_ipv4_tcp_fin_timeout", null)
          net_ipv4_tcp_keepalive_intvl       = lookup(sysctl_config.value, "net_ipv4_tcp_keepalive_intvl", null)
          net_ipv4_tcp_keepalive_probes      = lookup(sysctl_config.value, "net_ipv4_tcp_keepalive_probes", null)
          net_ipv4_tcp_keepalive_time        = lookup(sysctl_config.value, "net_ipv4_tcp_keepalive_time", null)
          net_ipv4_tcp_max_syn_backlog       = lookup(sysctl_config.value, "net_ipv4_tcp_max_syn_backlog", null)
          net_ipv4_tcp_max_tw_buckets        = lookup(sysctl_config.value, "net_ipv4_tcp_max_tw_buckets", null)
          net_ipv4_tcp_tw_reuse              = lookup(sysctl_config.value, "net_ipv4_tcp_tw_reuse", null)
          net_netfilter_nf_conntrack_buckets = lookup(sysctl_config.value, "net_netfilter_nf_conntrack_buckets", null)
          net_netfilter_nf_conntrack_max     = lookup(sysctl_config.value, "net_netfilter_nf_conntrack_max", null)
          vm_max_map_count                   = lookup(sysctl_config.value, "vm_max_map_count", null)
          vm_swappiness                      = lookup(sysctl_config.value, "vm_swappiness", null)
          vm_vfs_cache_pressure              = lookup(sysctl_config.value, "vm_vfs_cache_pressure", null)
        }
      }

      transparent_huge_page_defrag  = lookup(linux_os_config.value, "transparent_huge_page_defrag", null)
      transparent_huge_page_enabled = lookup(linux_os_config.value, "transparent_huge_page_enabled", null)
    }
  }

  fips_enabled       = var.fips_enabled
  gpu_instance       = var.gpu_instance
  kubelet_disk_type  = var.kubelet_disk_type
  max_pods           = var.max_pods
  message_of_the_day = var.message_of_the_day
  mode               = var.mode # Default: User

  dynamic "node_network_profile" { # var.node_network_profile
    for_each = var.node_network_profile != null ? var.node_network_profile : []
    content {
      node_public_ip_tags = lookup(node_network_profile.value, "node_public_ip_tags", null)
    }
  }

  node_labels                  = var.node_labels
  node_public_ip_prefix_id     = var.node_public_ip_prefix_id
  node_taints                  = var.node_taints
  orchestrator_version         = var.orchestrator_version
  os_disk_size_gb              = var.os_disk_size_gb
  os_disk_type                 = var.os_disk_type # Default: Managed
  pod_subnet_id                = var.pod_subnet_id
  os_sku                       = var.os_sku   # Default: Ubuntu
  os_type                      = var.os_type  # Default: Linux
  priority                     = var.priority # Default: Regular
  proximity_placement_group_id = var.proximity_placement_group_id
  spot_max_price               = var.spot_max_price
  snapshot_id                  = var.snapshot_id
  tags                         = var.tags
  scale_down_mode              = var.scale_down_mode   # Default: Delete
  ultra_ssd_enabled            = var.ultra_ssd_enabled # Default: False

  dynamic "upgrade_settings" { # var.upgrade_settings
    for_each = var.upgrade_settings != null ? var.upgrade_settings : []
    content {
      max_surge = lookup(upgrade_settings.value, "max_surge") # (Required) 
    }
  }

  vnet_subnet_id = var.vnet_subnet_id

  dynamic "windows_profile" { # var.windows_profile
    for_each = var.windows_profile != null ? var.windows_profile : []
    content {
      outbound_nat_enabled = lookup(windows_profile.value, "outbound_nat_enabled", true)
    }
  }

  workload_runtime = var.workload_runtime
  zones            = var.zones
  max_count        = var.max_count
  min_count        = var.min_count
  node_count       = var.node_count
}
