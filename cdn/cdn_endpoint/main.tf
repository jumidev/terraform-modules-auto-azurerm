

resource "azurerm_cdn_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  profile_name        = var.profile_name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  is_http_allowed           = var.is_http_allowed  # Default: True
  is_https_allowed          = var.is_https_allowed # Default: True
  content_types_to_compress = var.content_types_to_compress
}
