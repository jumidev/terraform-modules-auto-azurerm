

resource "azurerm_private_dns_txt_record" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  zone_name           = var.zone_name

  dynamic "record" { # var.record
    for_each = var.record != null ? var.record : []
    content {
      value = lookup(record.value, "value") # (Required) 
    }
  }

  ttl = var.ttl

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
