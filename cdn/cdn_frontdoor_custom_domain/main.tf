

resource "azurerm_cdn_frontdoor_custom_domain" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id
  host_name                = var.host_name

  tls {
    certificate_type        = lookup(tls.value, "certificate_type", "ManagedCertificate")
    minimum_tls_version     = lookup(tls.value, "minimum_tls_version", "TLS12")
    cdn_frontdoor_secret_id = lookup(tls.value, "cdn_frontdoor_secret_id", null)
  }


  ########################################
  # optional vars
  ########################################
  dns_zone_id = var.dns_zone_id
}
