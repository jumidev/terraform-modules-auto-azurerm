

resource "azurerm_private_dns_mx_record" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = var.resource_group_name
  zone_name           = var.zone_name

  dynamic "record" { # var.records
    for_each = var.records != null ? var.records : []
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
