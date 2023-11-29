data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_app_service" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  app_service_plan_id = var.app_service_plan_id

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
      token_refresh_extension_hours = lookup(auth_settings.value, "token_refresh_extension_hours", 72)
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


  dynamic "backup" { # var.backup
    for_each = var.backup != null ? var.backup : []
    content {
      name                = backup.key
      enabled             = lookup(backup.value, "enabled", true)
      storage_account_url = lookup(backup.value, "storage_account_url") # (Required) 

      dynamic "schedule" { # backup.value.schedule
        for_each = backup.value.schedule != null ? backup.value.schedule : []
        content {
          frequency_interval       = lookup(schedule.value, "frequency_interval") # (Required) 
          frequency_unit           = lookup(schedule.value, "frequency_unit")     # (Required) possible values: Day | Hour
          keep_at_least_one_backup = lookup(schedule.value, "keep_at_least_one_backup", null)
          retention_period_in_days = lookup(schedule.value, "retention_period_in_days", 30)
          start_time               = lookup(schedule.value, "start_time", null)
        }
      }

    }
  }


  dynamic "connection_string" { # var.connection_string
    for_each = var.connection_string != null ? var.connection_string : []
    content {
      name  = connection_string.key
      type  = lookup(connection_string.value, "type")  # (Required) possible values: APIHub | Custom | DocDb | EventHub | MySQL | NotificationHub | PostgreSQL | RedisCache | ServiceBus | SQLAzure | SQLServer
      value = lookup(connection_string.value, "value") # (Required) 
    }
  }

  client_affinity_enabled = var.client_affinity_enabled
  client_cert_enabled     = var.client_cert_enabled # Default: False
  client_cert_mode        = var.client_cert_mode
  enabled                 = var.enabled # Default: True

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | identity_ids | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  https_only                      = var.https_only # Default: False
  key_vault_reference_identity_id = var.key_vault_reference_identity_id

  dynamic "logs" { # var.logs
    for_each = var.logs != null ? var.logs : []
    content {

      dynamic "application_logs" { # logs.value.application_logs
        for_each = logs.value.application_logs != null ? logs.value.application_logs : []
        content {

          dynamic "azure_blob_storage" { # application_logs.value.azure_blob_storage
            for_each = application_logs.value.azure_blob_storage != null ? application_logs.value.azure_blob_storage : []
            content {
              level             = lookup(azure_blob_storage.value, "level")             # (Required) possible values: Error | Warning | Information | Verbose | Off
              sas_url           = lookup(azure_blob_storage.value, "sas_url")           # (Required) 
              retention_in_days = lookup(azure_blob_storage.value, "retention_in_days") # (Required) 
            }
          }

          file_system_level = lookup(application_logs.value, "file_system_level", "Off")
        }
      }


      dynamic "http_logs" { # logs.value.http_logs
        for_each = logs.value.http_logs != null ? logs.value.http_logs : []
        content {

          dynamic "file_system" { # http_logs.value.file_system
            for_each = http_logs.value.file_system != null ? http_logs.value.file_system : []
            content {
              retention_in_days = lookup(file_system.value, "retention_in_days") # (Required) 
              retention_in_mb   = lookup(file_system.value, "retention_in_mb")   # (Required) 
            }
          }


          dynamic "azure_blob_storage" { # http_logs.value.azure_blob_storage
            for_each = http_logs.value.azure_blob_storage != null ? http_logs.value.azure_blob_storage : []
            content {
              level             = lookup(azure_blob_storage.value, "level")             # (Required) possible values: Error | Warning | Information | Verbose | Off
              sas_url           = lookup(azure_blob_storage.value, "sas_url")           # (Required) 
              retention_in_days = lookup(azure_blob_storage.value, "retention_in_days") # (Required) 
            }
          }

        }
      }

      detailed_error_messages_enabled = lookup(logs.value, "detailed_error_messages_enabled", false)
      failed_request_tracing_enabled  = lookup(logs.value, "failed_request_tracing_enabled", false)
    }
  }


  dynamic "storage_account" { # var.storage_account
    for_each = var.storage_account != null ? var.storage_account : []
    content {
      name         = storage_account.key
      type         = lookup(storage_account.value, "type")         # (Required) possible values: AzureBlob | AzureFiles
      account_name = lookup(storage_account.value, "account_name") # (Required) 
      share_name   = lookup(storage_account.value, "share_name")   # (Required) 
      access_key   = lookup(storage_account.value, "access_key")   # (Required) 
      mount_path   = lookup(storage_account.value, "mount_path", null)
    }
  }


  dynamic "site_config" { # var.site_config
    for_each = var.site_config != null ? var.site_config : []
    content {
      acr_use_managed_identity_credentials = lookup(site_config.value, "acr_use_managed_identity_credentials", null)
      acr_user_managed_identity_client_id  = lookup(site_config.value, "acr_user_managed_identity_client_id", null)
      always_on                            = lookup(site_config.value, "always_on", false)
      app_command_line                     = lookup(site_config.value, "app_command_line", null)
      auto_swap_slot_name                  = lookup(site_config.value, "auto_swap_slot_name", null)

      dynamic "cors" { # site_config.value.cors
        for_each = site_config.value.cors != null ? site_config.value.cors : []
        content {
          allowed_origins     = lookup(cors.value, "allowed_origins") # (Required) 
          support_credentials = lookup(cors.value, "support_credentials", null)
        }
      }

      default_documents        = lookup(site_config.value, "default_documents", null)
      dotnet_framework_version = lookup(site_config.value, "dotnet_framework_version", "v4.0")
      ftps_state               = lookup(site_config.value, "ftps_state", null)
      health_check_path        = lookup(site_config.value, "health_check_path", null)
      number_of_workers        = lookup(site_config.value, "number_of_workers", null)
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
          headers                   = lookup(ip_restriction.value, "headers", null)
        }
      }

      scm_use_main_ip_restriction = lookup(site_config.value, "scm_use_main_ip_restriction", false)

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

      java_version              = lookup(site_config.value, "java_version", null)
      java_container            = lookup(site_config.value, "java_container", null)
      java_container_version    = lookup(site_config.value, "java_container_version", null)
      local_mysql_enabled       = lookup(site_config.value, "local_mysql_enabled", null)
      linux_fx_version          = lookup(site_config.value, "linux_fx_version", null)
      windows_fx_version        = lookup(site_config.value, "windows_fx_version", null)
      managed_pipeline_mode     = lookup(site_config.value, "managed_pipeline_mode", "Integrated")
      min_tls_version           = lookup(site_config.value, "min_tls_version", "1.2")
      php_version               = lookup(site_config.value, "php_version", null)
      python_version            = lookup(site_config.value, "python_version", null)
      remote_debugging_enabled  = lookup(site_config.value, "remote_debugging_enabled", false)
      remote_debugging_version  = lookup(site_config.value, "remote_debugging_version", null)
      scm_type                  = lookup(site_config.value, "scm_type", "None")
      use_32_bit_worker_process = lookup(site_config.value, "use_32_bit_worker_process", null)
      vnet_route_all_enabled    = lookup(site_config.value, "vnet_route_all_enabled", false)
      websockets_enabled        = lookup(site_config.value, "websockets_enabled", null)
    }
  }


  dynamic "source_control" { # var.source_control
    for_each = var.source_control != null ? var.source_control : []
    content {
      repo_url           = lookup(source_control.value, "repo_url", null)
      branch             = lookup(source_control.value, "branch", null)
      manual_integration = lookup(source_control.value, "manual_integration", false)
      rollback_enabled   = lookup(source_control.value, "rollback_enabled", false)
      use_mercurial      = lookup(source_control.value, "use_mercurial", null)
    }
  }

  tags = var.tags
}
