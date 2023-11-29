

resource "azurerm_cdn_frontdoor_security_policy" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id

  security_policies {
    firewall = lookup(security_policies.value, "firewall") # (Required) 
  }

}
