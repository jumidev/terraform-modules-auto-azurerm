

resource "azurerm_dns_a_record" "this" {

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
  records            = var.records
  target_resource_id = var.target_resource_id
  tags               = var.tags
}
