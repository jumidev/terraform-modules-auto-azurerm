

resource "azurerm_cdn_frontdoor_custom_domain" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id
  host_name                = var.host_name

  ########################################
  # optional vars
  ########################################
  dns_zone_id = var.dns_zone_id
}

##############################################################################################
# optional azurerm_cdn_frontdoor_custom_domain_association 
##############################################################################################
resource "azurerm_cdn_frontdoor_custom_domain_association" "this" {
  count                          = var.cdn_frontdoor_route_ids != null ? 1 : 0
  cdn_frontdoor_custom_domain_id = azurerm_cdn_frontdoor_custom_domain.this.id
  cdn_frontdoor_route_ids        = var.cdn_frontdoor_route_ids
}
