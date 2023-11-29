

resource "azurerm_api_management_custom_domain" "this" {

  ########################################
  # required vars
  ########################################
  api_management_id = var.api_management_id

  ########################################
  # optional vars
  ########################################

  dynamic "developer_portal" { # var.developer_portal
    for_each = var.developer_portal != null ? var.developer_portal : []
    content {
      host_name                       = lookup(developer_portal.value, "host_name") # (Required) 
      certificate                     = lookup(developer_portal.value, "certificate", null)
      certificate_password            = lookup(developer_portal.value, "certificate_password", null)
      key_vault_id                    = lookup(developer_portal.value, "key_vault_id", null)
      negotiate_client_certificate    = lookup(developer_portal.value, "negotiate_client_certificate", false)
      ssl_keyvault_identity_client_id = lookup(developer_portal.value, "ssl_keyvault_identity_client_id", null)
    }
  }


  dynamic "management" { # var.management
    for_each = var.management != null ? var.management : []
    content {
      host_name                       = lookup(management.value, "host_name") # (Required) 
      certificate                     = lookup(management.value, "certificate", null)
      certificate_password            = lookup(management.value, "certificate_password", null)
      key_vault_id                    = lookup(management.value, "key_vault_id", null)
      negotiate_client_certificate    = lookup(management.value, "negotiate_client_certificate", false)
      ssl_keyvault_identity_client_id = lookup(management.value, "ssl_keyvault_identity_client_id", null)
    }
  }


  dynamic "portal" { # var.portal
    for_each = var.portal != null ? var.portal : []
    content {
      host_name                       = lookup(portal.value, "host_name") # (Required) 
      certificate                     = lookup(portal.value, "certificate", null)
      certificate_password            = lookup(portal.value, "certificate_password", null)
      key_vault_id                    = lookup(portal.value, "key_vault_id", null)
      negotiate_client_certificate    = lookup(portal.value, "negotiate_client_certificate", false)
      ssl_keyvault_identity_client_id = lookup(portal.value, "ssl_keyvault_identity_client_id", null)
    }
  }


  dynamic "gateway" { # var.gateway
    for_each = var.gateway != null ? var.gateway : []
    content {
      host_name                       = lookup(gateway.value, "host_name") # (Required) 
      certificate                     = lookup(gateway.value, "certificate", null)
      certificate_password            = lookup(gateway.value, "certificate_password", null)
      default_ssl_binding             = lookup(gateway.value, "default_ssl_binding", false)
      key_vault_id                    = lookup(gateway.value, "key_vault_id", null)
      negotiate_client_certificate    = lookup(gateway.value, "negotiate_client_certificate", false)
      ssl_keyvault_identity_client_id = lookup(gateway.value, "ssl_keyvault_identity_client_id", null)
    }
  }


  dynamic "scm" { # var.scm
    for_each = var.scm != null ? var.scm : []
    content {
      host_name                       = lookup(scm.value, "host_name") # (Required) 
      certificate                     = lookup(scm.value, "certificate", null)
      certificate_password            = lookup(scm.value, "certificate_password", null)
      key_vault_id                    = lookup(scm.value, "key_vault_id", null)
      negotiate_client_certificate    = lookup(scm.value, "negotiate_client_certificate", false)
      ssl_keyvault_identity_client_id = lookup(scm.value, "ssl_keyvault_identity_client_id", null)
    }
  }

}
