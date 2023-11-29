

resource "azurerm_static_site_custom_domain" "this" {

  ########################################
  # required vars
  ########################################
  domain_name    = var.domain_name
  static_site_id = var.static_site_id

  ########################################
  # optional vars
  ########################################
  validation_type = var.validation_type
}
