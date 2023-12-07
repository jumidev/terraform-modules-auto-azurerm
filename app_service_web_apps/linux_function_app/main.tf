data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_storage_account" "this" {
  name                = var.storage_account_name
  resource_group_name = var.storage_account_resource_group_name != null ? var.storage_account_resource_group_name : var.resource_group_name

}


resource "azurerm_linux_function_app" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  service_plan_id     = var.service_plan_id

  site_config {
    always_on                                     = lookup(site_config.value, "always_on", false)
    api_definition_url                            = lookup(site_config.value, "api_definition_url", null)
    api_management_api_id                         = lookup(site_config.value, "api_management_api_id", null)
    app_command_line                              = lookup(site_config.value, "app_command_line", null)
    app_scale_limit                               = lookup(site_config.value, "app_scale_limit", null)
    application_insights_connection_string        = lookup(site_config.value, "application_insights_connection_string", null)
    application_insights_key                      = lookup(site_config.value, "application_insights_key", null)
    application_stack                             = lookup(site_config.value, "application_stack", null)
    app_service_logs                              = lookup(site_config.value, "app_service_logs", null)
    container_registry_managed_identity_client_id = lookup(site_config.value, "container_registry_managed_identity_client_id", null)
    container_registry_use_managed_identity       = lookup(site_config.value, "container_registry_use_managed_identity", null)
    cors                                          = lookup(site_config.value, "cors", null)
    default_documents                             = lookup(site_config.value, "default_documents", null)
    elastic_instance_minimum                      = lookup(site_config.value, "elastic_instance_minimum", null)
    ftps_state                                    = lookup(site_config.value, "ftps_state", "Disabled")
    health_check_path                             = lookup(site_config.value, "health_check_path", null)
    health_check_eviction_time_in_min             = lookup(site_config.value, "health_check_eviction_time_in_min", null)
    http2_enabled                                 = lookup(site_config.value, "http2_enabled", false)
    ip_restriction                                = lookup(site_config.value, "ip_restriction", null)
    load_balancing_mode                           = lookup(site_config.value, "load_balancing_mode", "LeastRequests")
    managed_pipeline_mode                         = lookup(site_config.value, "managed_pipeline_mode", "Integrated")
    minimum_tls_version                           = lookup(site_config.value, "minimum_tls_version", "1.2")
    pre_warmed_instance_count                     = lookup(site_config.value, "pre_warmed_instance_count", null)
    remote_debugging_enabled                      = lookup(site_config.value, "remote_debugging_enabled", false)
    remote_debugging_version                      = lookup(site_config.value, "remote_debugging_version", null)
    runtime_scale_monitoring_enabled              = lookup(site_config.value, "runtime_scale_monitoring_enabled", null)
    scm_ip_restriction                            = lookup(site_config.value, "scm_ip_restriction", null)
    scm_minimum_tls_version                       = lookup(site_config.value, "scm_minimum_tls_version", "1.2")
    scm_use_main_ip_restriction                   = lookup(site_config.value, "scm_use_main_ip_restriction", null)
    use_32_bit_worker                             = lookup(site_config.value, "use_32_bit_worker", false)
    vnet_route_all_enabled                        = lookup(site_config.value, "vnet_route_all_enabled", false)
    websockets_enabled                            = lookup(site_config.value, "websockets_enabled", false)
    worker_count                                  = lookup(site_config.value, "worker_count", null)
  }


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
          client_id                  = lookup(active_directory.value, "client_id") # (Required) 
          allowed_audiences          = lookup(active_directory.value, "allowed_audiences", null)
          client_secret              = lookup(active_directory.value, "client_secret", null)
          client_secret_setting_name = lookup(active_directory.value, "client_secret_setting_name", null)
        }
      }

      additional_login_parameters    = lookup(auth_settings.value, "additional_login_parameters", null)
      allowed_external_redirect_urls = lookup(auth_settings.value, "allowed_external_redirect_urls", null)
      default_provider               = lookup(auth_settings.value, "default_provider", null)

      dynamic "facebook" { # auth_settings.value.facebook
        for_each = auth_settings.value.facebook != null ? auth_settings.value.facebook : []
        content {
          app_id                  = lookup(facebook.value, "app_id") # (Required) 
          app_secret              = lookup(facebook.value, "app_secret", null)
          app_secret_setting_name = lookup(facebook.value, "app_secret_setting_name", null)
          oauth_scopes            = lookup(facebook.value, "oauth_scopes", null)
        }
      }


      dynamic "github" { # auth_settings.value.github
        for_each = auth_settings.value.github != null ? auth_settings.value.github : []
        content {
          client_id                  = lookup(github.value, "client_id") # (Required) 
          client_secret              = lookup(github.value, "client_secret", null)
          client_secret_setting_name = lookup(github.value, "client_secret_setting_name", null)
          oauth_scopes               = lookup(github.value, "oauth_scopes", null)
        }
      }


      dynamic "google" { # auth_settings.value.google
        for_each = auth_settings.value.google != null ? auth_settings.value.google : []
        content {
          client_id                  = lookup(google.value, "client_id") # (Required) 
          client_secret              = lookup(google.value, "client_secret", null)
          client_secret_setting_name = lookup(google.value, "client_secret_setting_name", null)
          oauth_scopes               = lookup(google.value, "oauth_scopes", null)
        }
      }

      issuer = lookup(auth_settings.value, "issuer", null)

      dynamic "microsoft" { # auth_settings.value.microsoft
        for_each = auth_settings.value.microsoft != null ? auth_settings.value.microsoft : []
        content {
          client_id                  = lookup(microsoft.value, "client_id") # (Required) 
          client_secret              = lookup(microsoft.value, "client_secret", null)
          client_secret_setting_name = lookup(microsoft.value, "client_secret_setting_name", null)
          oauth_scopes               = lookup(microsoft.value, "oauth_scopes", null)
        }
      }

      runtime_version               = lookup(auth_settings.value, "runtime_version", null)
      token_refresh_extension_hours = lookup(auth_settings.value, "token_refresh_extension_hours", "72")
      token_store_enabled           = lookup(auth_settings.value, "token_store_enabled", false)

      dynamic "twitter" { # auth_settings.value.twitter
        for_each = auth_settings.value.twitter != null ? auth_settings.value.twitter : []
        content {
          consumer_key                 = lookup(twitter.value, "consumer_key") # (Required) 
          consumer_secret              = lookup(twitter.value, "consumer_secret", null)
          consumer_secret_setting_name = lookup(twitter.value, "consumer_secret_setting_name", null)
        }
      }

      unauthenticated_client_action = lookup(auth_settings.value, "unauthenticated_client_action", null)
    }
  }


  dynamic "auth_settings_v2" { # var.auth_settings_v2
    for_each = var.auth_settings_v2 != null ? var.auth_settings_v2 : []
    content {
      auth_enabled                            = lookup(auth_settings_v2.value, "auth_enabled", false)
      runtime_version                         = lookup(auth_settings_v2.value, "runtime_version", "~1")
      config_file_path                        = lookup(auth_settings_v2.value, "config_file_path", null)
      require_authentication                  = lookup(auth_settings_v2.value, "require_authentication", null)
      unauthenticated_action                  = lookup(auth_settings_v2.value, "unauthenticated_action", "RedirectToLoginPage")
      default_provider                        = lookup(auth_settings_v2.value, "default_provider", null)
      excluded_paths                          = lookup(auth_settings_v2.value, "excluded_paths", null)
      require_https                           = lookup(auth_settings_v2.value, "require_https", true)
      http_route_api_prefix                   = lookup(auth_settings_v2.value, "http_route_api_prefix", "/.auth")
      forward_proxy_convention                = lookup(auth_settings_v2.value, "forward_proxy_convention", "NoProxy")
      forward_proxy_custom_host_header_name   = lookup(auth_settings_v2.value, "forward_proxy_custom_host_header_name", null)
      forward_proxy_custom_scheme_header_name = lookup(auth_settings_v2.value, "forward_proxy_custom_scheme_header_name", null)

      dynamic "apple_v2" { # auth_settings_v2.value.apple_v2
        for_each = auth_settings_v2.value.apple_v2 != null ? auth_settings_v2.value.apple_v2 : []
        content {
          client_id                  = lookup(apple_v2.value, "client_id")                  # (Required) 
          client_secret_setting_name = lookup(apple_v2.value, "client_secret_setting_name") # (Required) 
          login_scopes               = lookup(apple_v2.value, "login_scopes", null)
        }
      }


      dynamic "active_directory_v2" { # auth_settings_v2.value.active_directory_v2
        for_each = auth_settings_v2.value.active_directory_v2 != null ? auth_settings_v2.value.active_directory_v2 : []
        content {
          client_id                            = lookup(active_directory_v2.value, "client_id")            # (Required) 
          tenant_auth_endpoint                 = lookup(active_directory_v2.value, "tenant_auth_endpoint") # (Required) 
          client_secret_setting_name           = lookup(active_directory_v2.value, "client_secret_setting_name", null)
          client_secret_certificate_thumbprint = lookup(active_directory_v2.value, "client_secret_certificate_thumbprint", null)
          jwt_allowed_groups                   = lookup(active_directory_v2.value, "jwt_allowed_groups", null)
          jwt_allowed_client_applications      = lookup(active_directory_v2.value, "jwt_allowed_client_applications", null)
          www_authentication_disabled          = lookup(active_directory_v2.value, "www_authentication_disabled", false)
          allowed_groups                       = lookup(active_directory_v2.value, "allowed_groups", null)
          allowed_identities                   = lookup(active_directory_v2.value, "allowed_identities", null)
          allowed_applications                 = lookup(active_directory_v2.value, "allowed_applications", null)
          login_parameters                     = lookup(active_directory_v2.value, "login_parameters", null)
          allowed_audiences                    = lookup(active_directory_v2.value, "allowed_audiences", null)
        }
      }


      dynamic "azure_static_web_app_v2" { # auth_settings_v2.value.azure_static_web_app_v2
        for_each = auth_settings_v2.value.azure_static_web_app_v2 != null ? auth_settings_v2.value.azure_static_web_app_v2 : []
        content {
          client_id = lookup(azure_static_web_app_v2.value, "client_id") # (Required) 
        }
      }


      dynamic "custom_oidc_v2" { # auth_settings_v2.value.custom_oidc_v2
        for_each = auth_settings_v2.value.custom_oidc_v2 != null ? auth_settings_v2.value.custom_oidc_v2 : []
        content {
          name                          = custom_oidc_v2.key
          client_id                     = lookup(custom_oidc_v2.value, "client_id")                     # (Required) 
          openid_configuration_endpoint = lookup(custom_oidc_v2.value, "openid_configuration_endpoint") # (Required) 
          name_claim_type               = lookup(custom_oidc_v2.value, "name_claim_type", null)
          scopes                        = lookup(custom_oidc_v2.value, "scopes", null)
          client_credential_method      = lookup(custom_oidc_v2.value, "client_credential_method", null)
          client_secret_setting_name    = lookup(custom_oidc_v2.value, "client_secret_setting_name", null)
          authorisation_endpoint        = lookup(custom_oidc_v2.value, "authorisation_endpoint", null)
          token_endpoint                = lookup(custom_oidc_v2.value, "token_endpoint", null)
          issuer_endpoint               = lookup(custom_oidc_v2.value, "issuer_endpoint", null)
          certification_uri             = lookup(custom_oidc_v2.value, "certification_uri", null)
        }
      }


      dynamic "facebook_v2" { # auth_settings_v2.value.facebook_v2
        for_each = auth_settings_v2.value.facebook_v2 != null ? auth_settings_v2.value.facebook_v2 : []
        content {
          app_id                  = lookup(facebook_v2.value, "app_id")                  # (Required) 
          app_secret_setting_name = lookup(facebook_v2.value, "app_secret_setting_name") # (Required) 
          graph_api_version       = lookup(facebook_v2.value, "graph_api_version", null)
          login_scopes            = lookup(facebook_v2.value, "login_scopes", null)
        }
      }


      dynamic "github_v2" { # auth_settings_v2.value.github_v2
        for_each = auth_settings_v2.value.github_v2 != null ? auth_settings_v2.value.github_v2 : []
        content {
          client_id                  = lookup(github_v2.value, "client_id")                  # (Required) 
          client_secret_setting_name = lookup(github_v2.value, "client_secret_setting_name") # (Required) 
          login_scopes               = lookup(github_v2.value, "login_scopes", null)
        }
      }


      dynamic "google_v2" { # auth_settings_v2.value.google_v2
        for_each = auth_settings_v2.value.google_v2 != null ? auth_settings_v2.value.google_v2 : []
        content {
          client_id                  = lookup(google_v2.value, "client_id")                  # (Required) 
          client_secret_setting_name = lookup(google_v2.value, "client_secret_setting_name") # (Required) 
          allowed_audiences          = lookup(google_v2.value, "allowed_audiences", null)
          login_scopes               = lookup(google_v2.value, "login_scopes", null)
        }
      }


      dynamic "microsoft_v2" { # auth_settings_v2.value.microsoft_v2
        for_each = auth_settings_v2.value.microsoft_v2 != null ? auth_settings_v2.value.microsoft_v2 : []
        content {
          client_id                  = lookup(microsoft_v2.value, "client_id")                  # (Required) 
          client_secret_setting_name = lookup(microsoft_v2.value, "client_secret_setting_name") # (Required) 
          allowed_audiences          = lookup(microsoft_v2.value, "allowed_audiences", null)
          login_scopes               = lookup(microsoft_v2.value, "login_scopes", null)
        }
      }


      dynamic "twitter_v2" { # auth_settings_v2.value.twitter_v2
        for_each = auth_settings_v2.value.twitter_v2 != null ? auth_settings_v2.value.twitter_v2 : []
        content {
          consumer_key                 = lookup(twitter_v2.value, "consumer_key")                 # (Required) 
          consumer_secret_setting_name = lookup(twitter_v2.value, "consumer_secret_setting_name") # (Required) 
        }
      }


      dynamic "login" { # auth_settings_v2.value.login
        for_each = auth_settings_v2.value.login != null ? auth_settings_v2.value.login : []
        content {
          logout_endpoint                   = lookup(login.value, "logout_endpoint", null)
          token_store_enabled               = lookup(login.value, "token_store_enabled", false)
          token_refresh_extension_time      = lookup(login.value, "token_refresh_extension_time", "72")
          token_store_path                  = lookup(login.value, "token_store_path", null)
          token_store_sas_setting_name      = lookup(login.value, "token_store_sas_setting_name", null)
          preserve_url_fragments_for_logins = lookup(login.value, "preserve_url_fragments_for_logins", false)
          allowed_external_redirect_urls    = lookup(login.value, "allowed_external_redirect_urls", null)
          cookie_expiration_convention      = lookup(login.value, "cookie_expiration_convention", "FixedTime")
          cookie_expiration_time            = lookup(login.value, "cookie_expiration_time", "08:00:00")
          validate_nonce                    = lookup(login.value, "validate_nonce", true)
          nonce_expiration_time             = lookup(login.value, "nonce_expiration_time", "00:05:00")
        }
      }

    }
  }


  dynamic "backup" { # var.backup
    for_each = var.backup != null ? var.backup : []
    content {
      name = backup.key

      dynamic "schedule" { # backup.value.schedule
        for_each = backup.value.schedule != null ? backup.value.schedule : []
        content {
          frequency_interval       = lookup(schedule.value, "frequency_interval") # (Required) 
          frequency_unit           = lookup(schedule.value, "frequency_unit")     # (Required) possible values: Day | Hour
          keep_at_least_one_backup = lookup(schedule.value, "keep_at_least_one_backup", false)
          retention_period_days    = lookup(schedule.value, "retention_period_days", 30)
          start_time               = lookup(schedule.value, "start_time", null)
        }
      }

      storage_account_url = lookup(backup.value, "storage_account_url") # (Required) 
      enabled             = lookup(backup.value, "enabled", true)
    }
  }

  builtin_logging_enabled            = var.builtin_logging_enabled # Default: True
  client_certificate_enabled         = var.client_certificate_enabled
  client_certificate_mode            = var.client_certificate_mode # Default: Optional
  client_certificate_exclusion_paths = var.client_certificate_exclusion_paths

  dynamic "connection_string" { # var.connection_string
    for_each = var.connection_string != null ? var.connection_string : []
    content {
      name  = connection_string.key
      type  = lookup(connection_string.value, "type")  # (Required) possible values: MySQL | SQLServer | SQLAzure | Custom | NotificationHub | ServiceBus | EventHub | APIHub | DocDb | RedisCache | PostgreSQL
      value = lookup(connection_string.value, "value") # (Required) 
    }
  }

  daily_memory_time_quota                  = var.daily_memory_time_quota # Default: 0
  enabled                                  = var.enabled                 # Default: True
  content_share_force_disabled             = var.content_share_force_disabled
  functions_extension_version              = var.functions_extension_version              # Default: ~4
  ftp_publish_basic_authentication_enabled = var.ftp_publish_basic_authentication_enabled # Default: True
  https_only                               = var.https_only                               # Default: False
  public_network_access_enabled            = var.public_network_access_enabled            # Default: True

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  key_vault_reference_identity_id = var.key_vault_reference_identity_id

  dynamic "storage_account" { # var.storage_account
    for_each = var.storage_account != null ? var.storage_account : []
    content {
      access_key   = lookup(storage_account.value, "access_key")   # (Required) 
      account_name = lookup(storage_account.value, "account_name") # (Required) 
      name         = storage_account.key
      share_name   = lookup(storage_account.value, "share_name") # (Required) 
      type         = lookup(storage_account.value, "type")       # (Required) possible values: AzureFiles | AzureBlob
      mount_path   = lookup(storage_account.value, "mount_path", null)
    }
  }


  dynamic "sticky_settings" { # var.sticky_settings
    for_each = var.sticky_settings != null ? var.sticky_settings : []
    content {
      app_setting_names       = lookup(sticky_settings.value, "app_setting_names", null)
      connection_string_names = lookup(sticky_settings.value, "connection_string_names", null)
    }
  }

  storage_account_access_key                     = var.storage_account_access_key
  storage_account_name                           = data.azurerm_storage_account.this.name
  storage_uses_managed_identity                  = var.storage_uses_managed_identity
  storage_key_vault_secret_id                    = var.storage_key_vault_secret_id
  tags                                           = var.tags
  virtual_network_subnet_id                      = var.virtual_network_subnet_id
  webdeploy_publish_basic_authentication_enabled = var.webdeploy_publish_basic_authentication_enabled # Default: True
  zip_deploy_file                                = var.zip_deploy_file
}
