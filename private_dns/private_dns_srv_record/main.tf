

resource "azurerm_private_dns_srv_record" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  zone_name           = var.zone_name

  dynamic "record" { # var.records
    for_each = var.records != null ? var.records : []
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
