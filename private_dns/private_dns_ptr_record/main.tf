data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_private_dns_ptr_record" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  zone_name           = var.zone_name
  ttl                 = var.ttl
  records             = var.records

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
