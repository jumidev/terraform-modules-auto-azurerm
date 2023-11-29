

resource "azurerm_cdn_frontdoor_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id

  ########################################
  # optional vars
  ########################################
  enabled = var.enabled # Default: True
  tags    = var.tags
}
