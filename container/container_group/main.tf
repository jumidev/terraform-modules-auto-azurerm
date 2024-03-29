data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_container_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  container           = var.container
  os_type             = var.os_type

  ########################################
  # optional vars
  ########################################
  sku = var.sku # Default: Standard

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned | type
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  init_container = var.init_container

  dynamic "dns_config" { # var.dns_config
    for_each = var.dns_config != null ? var.dns_config : []
    content {
      nameservers    = lookup(dns_config.value, "nameservers") # (Required) 
      search_domains = lookup(dns_config.value, "search_domains", null)
      options        = lookup(dns_config.value, "options", null)
    }
  }


  dynamic "diagnostics" { # var.diagnostics
    for_each = var.diagnostics != null ? var.diagnostics : []
    content {

      dynamic "log_analytics" { # diagnostics.value.log_analytics
        for_each = diagnostics.value.log_analytics != null ? diagnostics.value.log_analytics : []
        content {
          log_type      = lookup(log_analytics.value, "log_type", null)
          workspace_id  = lookup(log_analytics.value, "workspace_id")  # (Required) 
          workspace_key = lookup(log_analytics.value, "workspace_key") # (Required) 
          metadata      = lookup(log_analytics.value, "metadata", null)
        }
      }

    }
  }

  dns_name_label                      = var.dns_name_label
  dns_name_label_reuse_policy         = var.dns_name_label_reuse_policy # Default: Unsecure
  exposed_port                        = var.exposed_port
  ip_address_type                     = var.ip_address_type # Default: Public
  key_vault_key_id                    = var.key_vault_key_id
  key_vault_user_assigned_identity_id = var.key_vault_user_assigned_identity_id
  subnet_ids                          = var.subnet_ids

  dynamic "image_registry_credential" { # var.image_registry_credential
    for_each = var.image_registry_credential != null ? var.image_registry_credential : []
    content {
      user_assigned_identity_id = lookup(image_registry_credential.value, "user_assigned_identity_id", null)
      username                  = lookup(image_registry_credential.value, "username", null)
      password                  = lookup(image_registry_credential.value, "password", null)
      server                    = lookup(image_registry_credential.value, "server") # (Required) 
    }
  }

  priority       = var.priority
  restart_policy = var.restart_policy # Default: Always
  zones          = var.zones
  tags           = var.tags
}
