data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_express_route_port" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  bandwidth_in_gbps   = var.bandwidth_in_gbps
  encapsulation       = var.encapsulation
  peering_location    = var.peering_location

  ########################################
  # optional vars
  ########################################

  dynamic "link1" { # var.link1
    for_each = var.link1 != null ? var.link1 : []
    content {
      admin_enabled                 = lookup(link1.value, "admin_enabled", false)
      macsec_cipher                 = lookup(link1.value, "macsec_cipher", "GcmAes128")
      macsec_ckn_keyvault_secret_id = lookup(link1.value, "macsec_ckn_keyvault_secret_id", null)
      macsec_cak_keyvault_secret_id = lookup(link1.value, "macsec_cak_keyvault_secret_id", null)
      macsec_sci_enabled            = lookup(link1.value, "macsec_sci_enabled", false)
    }
  }


  dynamic "link2" { # var.link2
    for_each = var.link2 != null ? var.link2 : []
    content {
      admin_enabled                 = lookup(link2.value, "admin_enabled", false)
      macsec_cipher                 = lookup(link2.value, "macsec_cipher", "GcmAes128")
      macsec_ckn_keyvault_secret_id = lookup(link2.value, "macsec_ckn_keyvault_secret_id", null)
      macsec_cak_keyvault_secret_id = lookup(link2.value, "macsec_cak_keyvault_secret_id", null)
      macsec_sci_enabled            = lookup(link2.value, "macsec_sci_enabled", false)
    }
  }

  billing_type = var.billing_type

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type")         # (Required) possible values: UserAssigned
      identity_ids = lookup(identity.value, "identity_ids") # (Required) 
    }
  }

  tags = var.tags
}
