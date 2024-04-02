

resource "azurerm_hpc_cache" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  cache_size_in_gb    = var.cache_size_in_gb
  subnet_id           = var.subnet_id
  sku_name            = var.sku_name

  ########################################
  # optional vars
  ########################################
  mtu = var.mtu # Default: 1500

  dynamic "default_access_policy" { # var.default_access_policy
    for_each = var.default_access_policy != null ? var.default_access_policy : []
    content {
      access_rule = lookup(default_access_policy.value, "access_rule") # (Required) 
    }
  }

  ntp_server = var.ntp_server # Default: time.windows.com

  dynamic "dns" { # var.dns
    for_each = var.dns != null ? var.dns : []
    content {
      servers       = lookup(dns.value, "servers") # (Required) 
      search_domain = lookup(dns.value, "search_domain", null)
    }
  }


  dynamic "directory_active_directory" { # var.directory_active_directory
    for_each = var.directory_active_directory != null ? var.directory_active_directory : []
    content {
      dns_primary_ip      = lookup(directory_active_directory.value, "dns_primary_ip")      # (Required) 
      domain_name         = lookup(directory_active_directory.value, "domain_name")         # (Required) 
      cache_netbios_name  = lookup(directory_active_directory.value, "cache_netbios_name")  # (Required) 
      domain_netbios_name = lookup(directory_active_directory.value, "domain_netbios_name") # (Required) 
      username            = lookup(directory_active_directory.value, "username")            # (Required) 
      password            = lookup(directory_active_directory.value, "password")            # (Required) 
      dns_secondary_ip    = lookup(directory_active_directory.value, "dns_secondary_ip", null)
    }
  }


  dynamic "directory_flat_file" { # var.directory_flat_file
    for_each = var.directory_flat_file != null ? var.directory_flat_file : []
    content {
      group_file_uri    = lookup(directory_flat_file.value, "group_file_uri")    # (Required) 
      password_file_uri = lookup(directory_flat_file.value, "password_file_uri") # (Required) 
    }
  }


  dynamic "directory_ldap" { # var.directory_ldap
    for_each = var.directory_ldap != null ? var.directory_ldap : []
    content {
      server                             = lookup(directory_ldap.value, "server")  # (Required) 
      base_dn                            = lookup(directory_ldap.value, "base_dn") # (Required) 
      encrypted                          = lookup(directory_ldap.value, "encrypted", null)
      certificate_validation_uri         = lookup(directory_ldap.value, "certificate_validation_uri", null)
      download_certificate_automatically = lookup(directory_ldap.value, "download_certificate_automatically", null)

      dynamic "bind" { # directory_ldap.value.bind
        for_each = directory_ldap.value.bind != null ? directory_ldap.value.bind : []
        content {
          password = lookup(bind.value, "password") # (Required) 
        }
      }

    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  key_vault_key_id                           = var.key_vault_key_id
  automatically_rotate_key_to_latest_enabled = var.automatically_rotate_key_to_latest_enabled
  tags                                       = var.tags
}
