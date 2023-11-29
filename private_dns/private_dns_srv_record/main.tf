data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_private_dns_zone" "this" {
  name                = var.private_dns_zone_name
  resource_group_name = var.private_dns_zone_resource_group_name == null ? null : var.private_dns_zone_resource_group_name
}


resource "azurerm_private_dns_srv_record" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  zone_name           = data.azurerm_private_dns_zone.this.name

  dynamic "record" { # var.record
    for_each = var.record != null ? var.record : []
    content {
      priority = lookup(record.value, "priority") # (Required) 
      weight   = lookup(record.value, "weight")   # (Required) 
      port     = lookup(record.value, "port")     # (Required) 
      target   = lookup(record.value, "target")   # (Required) 
    }
  }

  ttl = var.ttl

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
