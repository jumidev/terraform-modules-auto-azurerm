data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_spring_cloud_service" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "container_registry" { # var.container_registry
    for_each = var.container_registry != null ? var.container_registry : []
    content {
      name     = container_registry.key
      username = lookup(container_registry.value, "username") # (Required) 
      password = lookup(container_registry.value, "password") # (Required) 
      server   = lookup(container_registry.value, "server")   # (Required) 
    }
  }

  log_stream_public_endpoint_enabled = var.log_stream_public_endpoint_enabled
  build_agent_pool_size              = var.build_agent_pool_size

  dynamic "default_build_service" { # var.default_build_service
    for_each = var.default_build_service != null ? var.default_build_service : []
    content {
      container_registry_name = lookup(default_build_service.value, "container_registry_name", null)
    }
  }

  sku_name = var.sku_name # Default: S0

  dynamic "marketplace" { # var.marketplace
    for_each = var.marketplace != null ? var.marketplace : []
    content {
      plan      = lookup(marketplace.value, "plan")      # (Required) 
      publisher = lookup(marketplace.value, "publisher") # (Required) 
      product   = lookup(marketplace.value, "product")   # (Required) 
    }
  }


  dynamic "network" { # var.network
    for_each = var.network != null ? var.network : []
    content {
      app_subnet_id                          = lookup(network.value, "app_subnet_id")             # (Required) 
      service_runtime_subnet_id              = lookup(network.value, "service_runtime_subnet_id") # (Required) 
      cidr_ranges                            = lookup(network.value, "cidr_ranges")               # (Required) 
      app_network_resource_group             = lookup(network.value, "app_network_resource_group", null)
      outbound_type                          = lookup(network.value, "outbound_type", "loadBalancer")
      read_timeout_seconds                   = lookup(network.value, "read_timeout_seconds", null)
      service_runtime_network_resource_group = lookup(network.value, "service_runtime_network_resource_group", null)
    }
  }


  dynamic "config_server_git_setting" { # var.config_server_git_setting
    for_each = var.config_server_git_setting != null ? var.config_server_git_setting : []
    content {
      uri          = lookup(config_server_git_setting.value, "uri") # (Required) 
      label        = lookup(config_server_git_setting.value, "label", null)
      search_paths = lookup(config_server_git_setting.value, "search_paths", null)

      dynamic "http_basic_auth" { # config_server_git_setting.value.http_basic_auth
        for_each = config_server_git_setting.value.http_basic_auth != null ? config_server_git_setting.value.http_basic_auth : []
        content {
          username = lookup(http_basic_auth.value, "username") # (Required) 
          password = lookup(http_basic_auth.value, "password") # (Required) 
        }
      }


      dynamic "ssh_auth" { # config_server_git_setting.value.ssh_auth
        for_each = config_server_git_setting.value.ssh_auth != null ? config_server_git_setting.value.ssh_auth : []
        content {
          private_key                      = lookup(ssh_auth.value, "private_key") # (Required) 
          host_key                         = lookup(ssh_auth.value, "host_key", null)
          host_key_algorithm               = lookup(ssh_auth.value, "host_key_algorithm", null)
          strict_host_key_checking_enabled = lookup(ssh_auth.value, "strict_host_key_checking_enabled", true)
        }
      }


      dynamic "repository" { # config_server_git_setting.value.repository
        for_each = config_server_git_setting.value.repository != null ? config_server_git_setting.value.repository : []
        content {
          name         = repository.key
          uri          = lookup(repository.value, "uri") # (Required) 
          pattern      = lookup(repository.value, "pattern", null)
          label        = lookup(repository.value, "label", null)
          search_paths = lookup(repository.value, "search_paths", null)

          dynamic "http_basic_auth" { # repository.value.http_basic_auth
            for_each = repository.value.http_basic_auth != null ? repository.value.http_basic_auth : []
            content {
              username = lookup(http_basic_auth.value, "username") # (Required) 
              password = lookup(http_basic_auth.value, "password") # (Required) 
            }
          }


          dynamic "ssh_auth" { # repository.value.ssh_auth
            for_each = repository.value.ssh_auth != null ? repository.value.ssh_auth : []
            content {
              private_key                      = lookup(ssh_auth.value, "private_key") # (Required) 
              host_key                         = lookup(ssh_auth.value, "host_key", null)
              host_key_algorithm               = lookup(ssh_auth.value, "host_key_algorithm", null)
              strict_host_key_checking_enabled = lookup(ssh_auth.value, "strict_host_key_checking_enabled", true)
            }
          }

        }
      }

    }
  }

  service_registry_enabled = var.service_registry_enabled

  dynamic "trace" { # var.trace
    for_each = var.trace != null ? var.trace : []
    content {
      connection_string = lookup(trace.value, "connection_string", null)
      sample_rate       = lookup(trace.value, "sample_rate", "10.0")
    }
  }

  tags           = var.tags
  zone_redundant = var.zone_redundant # Default: False
}
