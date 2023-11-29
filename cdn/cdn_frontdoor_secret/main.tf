

resource "azurerm_cdn_frontdoor_secret" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id

  secret {
    customer_certificate = lookup(secret.value, "customer_certificate") # (Required) 
  }

}
