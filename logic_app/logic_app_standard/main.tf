data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_storage_account" "this" {
  name                = var.storage_account_name
  resource_group_name = var.storage_account_resource_group_name == null ? null : var.storage_account_resource_group_name
}


resource "azurerm_logic_app_standard" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  resource_group_name        = data.azurerm_resource_group.this.name
  location                   = var.location
  app_service_plan_id        = var.app_service_plan_id
  storage_account_name       = data.azurerm_storage_account.this.name
  storage_account_access_key = var.storage_account_access_key

  ########################################
  # optional vars
  ########################################
  app_settings         = var.app_settings
  use_extension_bundle = var.use_extension_bundle # Default: True
  bundle_version       = var.bundle_version       # Default: [1.*, 2.0.0)

  dynamic "connection_string" { # var.connection_string
    for_each = var.connection_string != null ? var.connection_string : []
    content {
      name  = connection_string.key
      type  = lookup(connection_string.value, "type")  # (Required) possible values: APIHub | Custom | DocDb | EventHub | MySQL | NotificationHub | PostgreSQL | RedisCache | ServiceBus | SQLAzure | SQLServer
      value = lookup(connection_string.value, "value") # (Required) 
    }
  }

  client_affinity_enabled = var.client_affinity_enabled
  client_certificate_mode = var.client_certificate_mode
  enabled                 = var.enabled    # Default: True
  https_only              = var.https_only # Default: False

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }


  dynamic "site_config" { # var.site_config
    for_each = var.site_config != null ? var.site_config : []
    content {
      always_on       = lookup(site_config.value, "always_on", false)
      app_scale_limit = lookup(site_config.value, "app_scale_limit", null)

      dynamic "cors" { # site_config.value.cors
        for_each = site_config.value.cors != null ? site_config.value.cors : []
        content {
          allowed_origins     = lookup(cors.value, "allowed_origins") # (Required) 
          support_credentials = lookup(cors.value, "support_credentials", null)
        }
      }

      dotnet_framework_version = lookup(site_config.value, "dotnet_framework_version", "v4.0")
      elastic_instance_minimum = lookup(site_config.value, "elastic_instance_minimum", null)
      ftps_state               = lookup(site_config.value, "ftps_state", "AllAllowed")
      health_check_path        = lookup(site_config.value, "health_check_path", null)
      http2_enabled            = lookup(site_config.value, "http2_enabled", false)

      dynamic "ip_restriction" { # site_config.value.ip_restriction
        for_each = site_config.value.ip_restriction != null ? site_config.value.ip_restriction : []
        content {
          ip_address                = lookup(ip_restriction.value, "ip_address", null)
          service_tag               = lookup(ip_restriction.value, "service_tag", null)
          virtual_network_subnet_id = lookup(ip_restriction.value, "virtual_network_subnet_id", null)
          name                      = ip_restriction.key
          priority                  = lookup(ip_restriction.value, "priority", null)
          action                    = lookup(ip_restriction.value, "action", "Allow")

          dynamic "headers" { # ip_restriction.value.headers
            for_each = ip_restriction.value.headers != null ? ip_restriction.value.headers : []
            content {
              x_azure_fdid      = lookup(headers.value, "x_azure_fdid", null)
              x_fd_health_probe = lookup(headers.value, "x_fd_health_probe", null)
              x_forwarded_for   = lookup(headers.value, "x_forwarded_for", null)
              x_forwarded_host  = lookup(headers.value, "x_forwarded_host", null)
            }
          }

        }
      }


      dynamic "scm_ip_restriction" { # site_config.value.scm_ip_restriction
        for_each = site_config.value.scm_ip_restriction != null ? site_config.value.scm_ip_restriction : []
        content {
          ip_address                = lookup(scm_ip_restriction.value, "ip_address", null)
          service_tag               = lookup(scm_ip_restriction.value, "service_tag", null)
          virtual_network_subnet_id = lookup(scm_ip_restriction.value, "virtual_network_subnet_id", null)
          name                      = scm_ip_restriction.key
          priority                  = lookup(scm_ip_restriction.value, "priority", null)
          action                    = lookup(scm_ip_restriction.value, "action", "Allow")
          headers                   = lookup(scm_ip_restriction.value, "headers", null)
        }
      }

      scm_use_main_ip_restriction      = lookup(site_config.value, "scm_use_main_ip_restriction", false)
      scm_min_tls_version              = lookup(site_config.value, "scm_min_tls_version", null)
      scm_type                         = lookup(site_config.value, "scm_type", "None")
      linux_fx_version                 = lookup(site_config.value, "linux_fx_version", null)
      min_tls_version                  = lookup(site_config.value, "min_tls_version", "1.2")
      pre_warmed_instance_count        = lookup(site_config.value, "pre_warmed_instance_count", null)
      runtime_scale_monitoring_enabled = lookup(site_config.value, "runtime_scale_monitoring_enabled", false)
      use_32_bit_worker_process        = lookup(site_config.value, "use_32_bit_worker_process", true)
      vnet_route_all_enabled           = lookup(site_config.value, "vnet_route_all_enabled", null)
      websockets_enabled               = lookup(site_config.value, "websockets_enabled", null)
    }
  }

  storage_account_share_name = var.storage_account_share_name
  version                    = var.version # Default: ~3
  virtual_network_subnet_id  = var.virtual_network_subnet_id
  tags                       = var.tags
}
