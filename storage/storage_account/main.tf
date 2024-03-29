data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_storage_account" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  resource_group_name      = data.azurerm_resource_group.this.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  ########################################
  # optional vars
  ########################################
  account_kind                     = var.account_kind                     # Default: StorageV2
  cross_tenant_replication_enabled = var.cross_tenant_replication_enabled # Default: True
  access_tier                      = var.access_tier                      # Default: Hot
  edge_zone                        = var.edge_zone
  enable_https_traffic_only        = var.enable_https_traffic_only       # Default: True
  min_tls_version                  = var.min_tls_version                 # Default: TLS1_2
  allow_nested_items_to_be_public  = var.allow_nested_items_to_be_public # Default: True
  shared_access_key_enabled        = var.shared_access_key_enabled       # Default: True
  public_network_access_enabled    = var.public_network_access_enabled   # Default: True
  default_to_oauth_authentication  = var.default_to_oauth_authentication # Default: False
  is_hns_enabled                   = var.is_hns_enabled
  nfsv3_enabled                    = var.nfsv3_enabled # Default: False

  dynamic "custom_domain" { # var.custom_domain
    for_each = var.custom_domain != null ? var.custom_domain : []
    content {
      name          = custom_domain.key
      use_subdomain = lookup(custom_domain.value, "use_subdomain", null)
    }
  }


  dynamic "customer_managed_key" { # var.customer_managed_key
    for_each = var.customer_managed_key != null ? var.customer_managed_key : []
    content {
      key_vault_key_id          = lookup(customer_managed_key.value, "key_vault_key_id")          # (Required) 
      user_assigned_identity_id = lookup(customer_managed_key.value, "user_assigned_identity_id") # (Required) 
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }


  dynamic "blob_properties" { # var.blob_properties
    for_each = var.blob_properties != null ? var.blob_properties : []
    content {

      dynamic "cors_rule" { # blob_properties.value.cors_rule
        for_each = blob_properties.value.cors_rule != null ? blob_properties.value.cors_rule : []
        content {
          allowed_headers    = lookup(cors_rule.value, "allowed_headers")    # (Required) 
          allowed_methods    = lookup(cors_rule.value, "allowed_methods")    # (Required) possible values: DELETE | GET | HEAD | MERGE | POST | OPTIONS | PUT | PATCH
          allowed_origins    = lookup(cors_rule.value, "allowed_origins")    # (Required) 
          exposed_headers    = lookup(cors_rule.value, "exposed_headers")    # (Required) 
          max_age_in_seconds = lookup(cors_rule.value, "max_age_in_seconds") # (Required) 
        }
      }


      dynamic "delete_retention_policy" { # blob_properties.value.delete_retention_policy
        for_each = blob_properties.value.delete_retention_policy != null ? blob_properties.value.delete_retention_policy : []
        content {
          days = lookup(delete_retention_policy.value, "days", 7)
        }
      }


      dynamic "restore_policy" { # blob_properties.value.restore_policy
        for_each = blob_properties.value.restore_policy != null ? blob_properties.value.restore_policy : []
        content {
          days = lookup(restore_policy.value, "days") # (Required) possible values: 1 | 365 | days | delete_retention_policy
        }
      }

      versioning_enabled            = lookup(blob_properties.value, "versioning_enabled", false)
      change_feed_enabled           = lookup(blob_properties.value, "change_feed_enabled", false)
      change_feed_retention_in_days = lookup(blob_properties.value, "change_feed_retention_in_days", null)
      default_service_version       = lookup(blob_properties.value, "default_service_version", null)
      last_access_time_enabled      = lookup(blob_properties.value, "last_access_time_enabled", false)

      dynamic "container_delete_retention_policy" { # blob_properties.value.container_delete_retention_policy
        for_each = blob_properties.value.container_delete_retention_policy != null ? blob_properties.value.container_delete_retention_policy : []
        content {
          days = lookup(container_delete_retention_policy.value, "days", 7)
        }
      }

    }
  }


  dynamic "queue_properties" { # var.queue_properties
    for_each = var.queue_properties != null ? var.queue_properties : []
    content {

      dynamic "cors_rule" { # queue_properties.value.cors_rule
        for_each = queue_properties.value.cors_rule != null ? queue_properties.value.cors_rule : []
        content {
          allowed_headers    = lookup(cors_rule.value, "allowed_headers")    # (Required) 
          allowed_methods    = lookup(cors_rule.value, "allowed_methods")    # (Required) possible values: DELETE | GET | HEAD | MERGE | POST | OPTIONS | PUT | PATCH
          allowed_origins    = lookup(cors_rule.value, "allowed_origins")    # (Required) 
          exposed_headers    = lookup(cors_rule.value, "exposed_headers")    # (Required) 
          max_age_in_seconds = lookup(cors_rule.value, "max_age_in_seconds") # (Required) 
        }
      }


      dynamic "logging" { # queue_properties.value.logging
        for_each = queue_properties.value.logging != null ? queue_properties.value.logging : []
        content {
          delete                = lookup(logging.value, "delete")  # (Required) 
          read                  = lookup(logging.value, "read")    # (Required) 
          version               = lookup(logging.value, "version") # (Required) 
          write                 = lookup(logging.value, "write")   # (Required) 
          retention_policy_days = lookup(logging.value, "retention_policy_days", null)
        }
      }


      dynamic "minute_metrics" { # queue_properties.value.minute_metrics
        for_each = queue_properties.value.minute_metrics != null ? queue_properties.value.minute_metrics : []
        content {
          enabled               = lookup(minute_metrics.value, "enabled") # (Required) 
          version               = lookup(minute_metrics.value, "version") # (Required) 
          include_apis          = lookup(minute_metrics.value, "include_apis", null)
          retention_policy_days = lookup(minute_metrics.value, "retention_policy_days", null)
        }
      }


      dynamic "hour_metrics" { # queue_properties.value.hour_metrics
        for_each = queue_properties.value.hour_metrics != null ? queue_properties.value.hour_metrics : []
        content {
          enabled               = lookup(hour_metrics.value, "enabled") # (Required) 
          version               = lookup(hour_metrics.value, "version") # (Required) 
          include_apis          = lookup(hour_metrics.value, "include_apis", null)
          retention_policy_days = lookup(hour_metrics.value, "retention_policy_days", null)
        }
      }

    }
  }


  dynamic "static_website" { # var.static_website
    for_each = var.static_website != null ? var.static_website : []
    content {
      index_document     = lookup(static_website.value, "index_document", null)
      error_404_document = lookup(static_website.value, "error_404_document", null)
    }
  }


  dynamic "share_properties" { # var.share_properties
    for_each = var.share_properties != null ? var.share_properties : []
    content {

      dynamic "cors_rule" { # share_properties.value.cors_rule
        for_each = share_properties.value.cors_rule != null ? share_properties.value.cors_rule : []
        content {
          allowed_headers    = lookup(cors_rule.value, "allowed_headers")    # (Required) 
          allowed_methods    = lookup(cors_rule.value, "allowed_methods")    # (Required) possible values: DELETE | GET | HEAD | MERGE | POST | OPTIONS | PUT | PATCH
          allowed_origins    = lookup(cors_rule.value, "allowed_origins")    # (Required) 
          exposed_headers    = lookup(cors_rule.value, "exposed_headers")    # (Required) 
          max_age_in_seconds = lookup(cors_rule.value, "max_age_in_seconds") # (Required) 
        }
      }


      dynamic "retention_policy" { # share_properties.value.retention_policy
        for_each = share_properties.value.retention_policy != null ? share_properties.value.retention_policy : []
        content {
          days = lookup(retention_policy.value, "days", 7)
        }
      }


      dynamic "smb" { # share_properties.value.smb
        for_each = share_properties.value.smb != null ? share_properties.value.smb : []
        content {
          versions                        = lookup(smb.value, "versions", null)
          authentication_types            = lookup(smb.value, "authentication_types", null)
          kerberos_ticket_encryption_type = lookup(smb.value, "kerberos_ticket_encryption_type", null)
          channel_encryption_type         = lookup(smb.value, "channel_encryption_type", null)
          multichannel_enabled            = lookup(smb.value, "multichannel_enabled", false)
        }
      }

    }
  }


  dynamic "network_rules" { # var.network_rules
    for_each = var.network_rules != null ? var.network_rules : []
    content {
      default_action             = lookup(network_rules.value, "default_action") # (Required) possible values: Deny | Allow
      bypass                     = lookup(network_rules.value, "bypass", null)
      ip_rules                   = lookup(network_rules.value, "ip_rules", null)
      virtual_network_subnet_ids = lookup(network_rules.value, "virtual_network_subnet_ids", null)

      dynamic "private_link_access" { # network_rules.value.private_link_access
        for_each = network_rules.value.private_link_access != null ? network_rules.value.private_link_access : []
        content {
          endpoint_resource_id = lookup(private_link_access.value, "endpoint_resource_id") # (Required) 
          endpoint_tenant_id   = lookup(private_link_access.value, "endpoint_tenant_id", null)
        }
      }

    }
  }

  large_file_share_enabled = var.large_file_share_enabled

  dynamic "azure_files_authentication" { # var.azure_files_authentication
    for_each = var.azure_files_authentication != null ? var.azure_files_authentication : []
    content {
      directory_type = lookup(azure_files_authentication.value, "directory_type") # (Required) possible values: AADDS | AD | AADKERB

      dynamic "active_directory" { # azure_files_authentication.value.active_directory
        for_each = azure_files_authentication.value.active_directory != null ? azure_files_authentication.value.active_directory : []
        content {
          domain_name         = lookup(active_directory.value, "domain_name") # (Required) 
          domain_guid         = lookup(active_directory.value, "domain_guid") # (Required) 
          domain_sid          = lookup(active_directory.value, "domain_sid", null)
          storage_sid         = lookup(active_directory.value, "storage_sid", null)
          forest_name         = lookup(active_directory.value, "forest_name", null)
          netbios_domain_name = lookup(active_directory.value, "netbios_domain_name", null)
        }
      }

    }
  }


  dynamic "routing" { # var.routing
    for_each = var.routing != null ? var.routing : []
    content {
      publish_internet_endpoints  = lookup(routing.value, "publish_internet_endpoints", false)
      publish_microsoft_endpoints = lookup(routing.value, "publish_microsoft_endpoints", false)
      choice                      = lookup(routing.value, "choice", "MicrosoftRouting")
    }
  }

  queue_encryption_key_type         = var.queue_encryption_key_type         # Default: Service
  table_encryption_key_type         = var.table_encryption_key_type         # Default: Service
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled # Default: False

  dynamic "immutability_policy" { # var.immutability_policy
    for_each = var.immutability_policy != null ? var.immutability_policy : []
    content {
      allow_protected_append_writes = lookup(immutability_policy.value, "allow_protected_append_writes") # (Required) 
      state                         = lookup(immutability_policy.value, "state")                         # (Required) 
      period_since_creation_in_days = lookup(immutability_policy.value, "period_since_creation_in_days") # (Required) 
    }
  }


  dynamic "sas_policy" { # var.sas_policy
    for_each = var.sas_policy != null ? var.sas_policy : []
    content {
      expiration_period = lookup(sas_policy.value, "expiration_period") # (Required) 
      expiration_action = lookup(sas_policy.value, "expiration_action", "Log")
    }
  }

  allowed_copy_scope = var.allowed_copy_scope
  sftp_enabled       = var.sftp_enabled # Default: False
  tags               = var.tags
}
