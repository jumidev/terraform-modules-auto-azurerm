

resource "azurerm_vpn_server_configuration" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  vpn_authentication_types = var.vpn_authentication_types

  azure_active_directory_authentication {
    audience = lookup(azure_active_directory_authentication.value, "audience") # (Required) 
    issuer   = lookup(azure_active_directory_authentication.value, "issuer")   # (Required) 
    tenant   = lookup(azure_active_directory_authentication.value, "tenant")   # (Required) 
  }


  dynamic "client_root_certificate" { # var.client_root_certificate
    for_each = var.client_root_certificate != null ? var.client_root_certificate : []
    content {
      name       = client_root_certificate.key
      thumbprint = lookup(client_root_certificate.value, "thumbprint") # (Required) 
    }
  }


  ########################################
  # optional vars
  ########################################

  dynamic "ipsec_policy" { # var.ipsec_policy
    for_each = var.ipsec_policy != null ? var.ipsec_policy : []
    content {
      dh_group               = lookup(ipsec_policy.value, "dh_group")               # (Required) possible values: DHGroup1 | DHGroup2 | DHGroup14 | DHGroup24 | DHGroup2048 | ECP256 | ECP384 | None
      ike_encryption         = lookup(ipsec_policy.value, "ike_encryption")         # (Required) possible values: AES128 | AES192 | AES256 | DES | DES3 | GCMAES128 | GCMAES256
      ike_integrity          = lookup(ipsec_policy.value, "ike_integrity")          # (Required) possible values: GCMAES128 | GCMAES256 | MD5 | SHA1 | SHA256 | SHA384
      ipsec_encryption       = lookup(ipsec_policy.value, "ipsec_encryption")       # (Required) possible values: AES128 | AES192 | AES256 | DES | DES3 | GCMAES128 | GCMAES192 | GCMAES256 | None
      ipsec_integrity        = lookup(ipsec_policy.value, "ipsec_integrity")        # (Required) possible values: GCMAES128 | GCMAES192 | GCMAES256 | MD5 | SHA1 | SHA256
      pfs_group              = lookup(ipsec_policy.value, "pfs_group")              # (Required) possible values: ECP256 | ECP384 | PFS1 | PFS2 | PFS14 | PFS24 | PFS2048 | PFSMM | None
      sa_lifetime_seconds    = lookup(ipsec_policy.value, "sa_lifetime_seconds")    # (Required) 
      sa_data_size_kilobytes = lookup(ipsec_policy.value, "sa_data_size_kilobytes") # (Required) 
    }
  }

  vpn_protocols = var.vpn_protocols
  tags          = var.tags

  dynamic "client_revoked_certificate" { # var.client_revoked_certificate
    for_each = var.client_revoked_certificate != null ? var.client_revoked_certificate : []
    content {
      name       = client_revoked_certificate.key
      thumbprint = lookup(client_revoked_certificate.value, "thumbprint") # (Required) 
    }
  }


  dynamic "radius" { # var.radius
    for_each = var.radius != null ? var.radius : []
    content {
      name       = radius.key
      thumbprint = lookup(radius.value, "thumbprint") # (Required) 
    }
  }

}
