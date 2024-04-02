

resource "azurerm_dns_mx_record" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = var.resource_group_name
  zone_name           = var.zone_name
  ttl                 = var.ttl

  ########################################
  # optional vars
  ########################################
  name = var.name # Default: @
}
