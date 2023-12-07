data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_function_app" "this" {
  name                = var.function_app_name
  resource_group_name = var.function_app_resource_group_name != null ? var.function_app_resource_group_name : var.resource_group_name

}
data "azurerm_storage_account" "this" {
  name                = var.storage_account_name
  resource_group_name = var.storage_account_resource_group_name == null ? null : var.storage_account_resource_group_name
}


resource "azurerm_function_app_slot" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  resource_group_name        = data.azurerm_resource_group.this.name
  location                   = var.location
  app_service_plan_id        = var.app_service_plan_id
  function_app_name          = data.azurerm_function_app.this.name
  storage_account_name       = data.azurerm_storage_account.this.name
  storage_account_access_key = var.storage_account_access_key

  ########################################
  # optional vars
  ########################################
  app_settings = var.app_settings

  dynamic "auth_settings" { # var.auth_settings
    for_each = var.auth_settings != null ? var.auth_settings : []
    content {
      enabled = lookup(auth_settings.value, "enabled") # (Required) 

      dynamic "active_directory" { # auth_settings.value.active_directory
        for_each = auth_settings.value.active_directory != null ? auth_settings.value.active_directory : []
        content {
          client_id         = lookup(active_directory.value, "client_id") # (Required) 
          client_secret     = lookup(active_directory.value, "client_secret", null)
          allowed_audiences = lookup(active_directory.value, "allowed_audiences", null)
        }
      }

      additional_login_params        = lookup(auth_settings.value, "additional_login_params", null)
      allowed_external_redirect_urls = lookup(auth_settings.value, "allowed_external_redirect_urls", null)
      default_provider               = lookup(auth_settings.value, "default_provider", null)

      dynamic "facebook" { # auth_settings.value.facebook
        for_each = auth_settings.value.facebook != null ? auth_settings.value.facebook : []
        content {
          app_id       = lookup(facebook.value, "app_id")     # (Required) 
          app_secret   = lookup(facebook.value, "app_secret") # (Required) 
          oauth_scopes = lookup(facebook.value, "oauth_scopes", null)
        }
      }


      dynamic "google" { # auth_settings.value.google
        for_each = auth_settings.value.google != null ? auth_settings.value.google : []
        content {
          client_id     = lookup(google.value, "client_id")     # (Required) 
          client_secret = lookup(google.value, "client_secret") # (Required) 
          oauth_scopes  = lookup(google.value, "oauth_scopes", null)
        }
      }

      issuer = lookup(auth_settings.value, "issuer", null)

      dynamic "microsoft" { # auth_settings.value.microsoft
        for_each = auth_settings.value.microsoft != null ? auth_settings.value.microsoft : []
        content {
          client_id     = lookup(microsoft.value, "client_id")     # (Required) 
          client_secret = lookup(microsoft.value, "client_secret") # (Required) 
          oauth_scopes  = lookup(microsoft.value, "oauth_scopes", null)
        }
      }

      runtime_version               = lookup(auth_settings.value, "runtime_version", null)
      token_refresh_extension_hours = lookup(auth_settings.value, "token_refresh_extension_hours", "72")
      token_store_enabled           = lookup(auth_settings.value, "token_store_enabled", false)

      dynamic "twitter" { # auth_settings.value.twitter
        for_each = auth_settings.value.twitter != null ? auth_settings.value.twitter : []
        content {
          consumer_key    = lookup(twitter.value, "consumer_key")    # (Required) 
          consumer_secret = lookup(twitter.value, "consumer_secret") # (Required) 
        }
      }

      unauthenticated_client_action = lookup(auth_settings.value, "unauthenticated_client_action", null)
    }
  }

  enable_builtin_logging = var.enable_builtin_logging # Default: True

  dynamic "connection_string" { # var.connection_string
    for_each = var.connection_string != null ? var.connection_string : []
    content {
      name  = connection_string.key
      type  = lookup(connection_string.value, "type")  # (Required) possible values: APIHub | Custom | DocDb | EventHub | MySQL | NotificationHub | PostgreSQL | RedisCache | ServiceBus | SQLAzure | SQLServer
      value = lookup(connection_string.value, "value") # (Required) 
    }
  }

  os_type                 = var.os_type
  enabled                 = var.enabled    # Default: True
  https_only              = var.https_only # Default: False
  version                 = var.version    # Default: ~1
  daily_memory_time_quota = var.daily_memory_time_quota

  dynamic "site_config" { # var.site_config
    for_each = var.site_config != null ? var.site_config : []
    content {
      always_on                        = lookup(site_config.value, "always_on", false)
      use_32_bit_worker_process        = lookup(site_config.value, "use_32_bit_worker_process", true)
      websockets_enabled               = lookup(site_config.value, "websockets_enabled", null)
      linux_fx_version                 = lookup(site_config.value, "linux_fx_version", null)
      java_version                     = lookup(site_config.value, "java_version", null)
      http2_enabled                    = lookup(site_config.value, "http2_enabled", false)
      min_tls_version                  = lookup(site_config.value, "min_tls_version", "1.2")
      ftps_state                       = lookup(site_config.value, "ftps_state", null)
      health_check_path                = lookup(site_config.value, "health_check_path", null)
      app_scale_limit                  = lookup(site_config.value, "app_scale_limit", null)
      runtime_scale_monitoring_enabled = lookup(site_config.value, "runtime_scale_monitoring_enabled", false)

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

      scm_type                    = lookup(site_config.value, "scm_type", null)
      scm_use_main_ip_restriction = lookup(site_config.value, "scm_use_main_ip_restriction", false)
      elastic_instance_minimum    = lookup(site_config.value, "elastic_instance_minimum", null)
      pre_warmed_instance_count   = lookup(site_config.value, "pre_warmed_instance_count", null)
      dotnet_framework_version    = lookup(site_config.value, "dotnet_framework_version", "v4.0")

      dynamic "cors" { # site_config.value.cors
        for_each = site_config.value.cors != null ? site_config.value.cors : []
        content {
          allowed_origins     = lookup(cors.value, "allowed_origins") # (Required) 
          support_credentials = lookup(cors.value, "support_credentials", null)
        }
      }


      dynamic "ip_restriction" { # site_config.value.ip_restriction
        for_each = site_config.value.ip_restriction != null ? site_config.value.ip_restriction : []
        content {
          ip_address                = lookup(ip_restriction.value, "ip_address", null)
          service_tag               = lookup(ip_restriction.value, "service_tag", null)
          virtual_network_subnet_id = lookup(ip_restriction.value, "virtual_network_subnet_id", null)
          name                      = ip_restriction.key
          priority                  = lookup(ip_restriction.value, "priority", null)
          action                    = lookup(ip_restriction.value, "action", "Allow")
          headers                   = lookup(ip_restriction.value, "headers", null)
        }
      }

      auto_swap_slot_name = lookup(site_config.value, "auto_swap_slot_name", null)
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | identity_ids | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  tags = var.tags
}
