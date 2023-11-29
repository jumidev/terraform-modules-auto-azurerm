data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_dns_zone" "this" {
  name                = var.dns_zone_name
  resource_group_name = var.dns_zone_resource_group_name == null ? null : var.dns_zone_resource_group_name
}


resource "azurerm_dns_aaaa_record" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  zone_name           = data.azurerm_dns_zone.this.name
  ttl                 = var.ttl

  ########################################
  # optional vars
  ########################################
  records            = var.records
  target_resource_id = var.target_resource_id
  tags               = var.tags
}
