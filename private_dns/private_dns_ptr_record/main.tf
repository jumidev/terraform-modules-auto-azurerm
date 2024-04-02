

resource "azurerm_private_dns_ptr_record" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  zone_name           = var.zone_name
  ttl                 = var.ttl
  records             = var.records

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
