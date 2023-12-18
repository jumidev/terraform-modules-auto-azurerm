data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_private_dns_mx_record" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  zone_name           = var.zone_name

  dynamic "record" { # var.record
    for_each = var.record != null ? var.record : []
    content {
      preference = lookup(record.value, "preference") # (Required) 
      exchange   = lookup(record.value, "exchange")   # (Required) 
    }
  }

  ttl = var.ttl

  ########################################
  # optional vars
  ########################################
  name = var.name
  tags = var.tags
}
