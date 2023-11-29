data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_private_dns_zone" "this" {
  name                = var.private_dns_zone_name
  resource_group_name = var.private_dns_zone_resource_group_name == null ? null : var.private_dns_zone_resource_group_name
}


resource "azurerm_private_dns_aaaa_record" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  zone_name           = data.azurerm_private_dns_zone.this.name
  ttl                 = var.ttl
  records             = var.records

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
