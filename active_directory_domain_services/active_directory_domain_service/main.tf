data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_active_directory_domain_service" "this" {

  ########################################
  # required vars
  ########################################
  domain_name = var.domain_name
  location    = var.location
  name        = var.name

  initial_replica_set {
    subnet_id = lookup(initial_replica_set.value, "subnet_id") # (Required) 
  }

  resource_group_name = data.azurerm_resource_group.this.name
  sku                 = var.sku

  ########################################
  # optional vars
  ########################################
  domain_configuration_type = var.domain_configuration_type
  filtered_sync_enabled     = var.filtered_sync_enabled # Default: False

  dynamic "secure_ldap" { # var.secure_ldap
    for_each = var.secure_ldap != null ? var.secure_ldap : []
    content {
      enabled                  = lookup(secure_ldap.value, "enabled") # (Required) 
      external_access_enabled  = lookup(secure_ldap.value, "external_access_enabled", false)
      pfx_certificate          = lookup(secure_ldap.value, "pfx_certificate")          # (Required) 
      pfx_certificate_password = lookup(secure_ldap.value, "pfx_certificate_password") # (Required) 
    }
  }


  dynamic "notifications" { # var.notifications
    for_each = var.notifications != null ? var.notifications : []
    content {
      additional_recipients = lookup(notifications.value, "additional_recipients", null)
      notify_dc_admins      = lookup(notifications.value, "notify_dc_admins", null)
      notify_global_admins  = lookup(notifications.value, "notify_global_admins", null)
    }
  }


  dynamic "security" { # var.security
    for_each = var.security != null ? var.security : []
    content {
      kerberos_armoring_enabled       = lookup(security.value, "kerberos_armoring_enabled", false)
      kerberos_rc4_encryption_enabled = lookup(security.value, "kerberos_rc4_encryption_enabled", false)
      ntlm_v1_enabled                 = lookup(security.value, "ntlm_v1_enabled", false)
      sync_kerberos_passwords         = lookup(security.value, "sync_kerberos_passwords", false)
      sync_ntlm_passwords             = lookup(security.value, "sync_ntlm_passwords", false)
      sync_on_prem_passwords          = lookup(security.value, "sync_on_prem_passwords", false)
      tls_v1_enabled                  = lookup(security.value, "tls_v1_enabled", false)
    }
  }

  tags = var.tags
}
