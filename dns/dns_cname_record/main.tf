

resource "azurerm_dns_cname_record" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  zone_name           = var.zone_name
  ttl                 = var.ttl

  ########################################
  # optional vars
  ########################################
  record             = var.record
  target_resource_id = var.target_resource_id
  tags               = var.tags
}
