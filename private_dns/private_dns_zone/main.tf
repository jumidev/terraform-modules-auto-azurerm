data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_private_dns_zone" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################

  dynamic "soa_record" { # var.soa_record
    for_each = var.soa_record != null ? var.soa_record : []
    content {
      email        = lookup(soa_record.value, "email") # (Required) 
      expire_time  = lookup(soa_record.value, "expire_time", "2419200")
      minimum_ttl  = lookup(soa_record.value, "minimum_ttl", "10")
      refresh_time = lookup(soa_record.value, "refresh_time", "3600")
      retry_time   = lookup(soa_record.value, "retry_time", "300")
      ttl          = lookup(soa_record.value, "ttl", "3600")
      tags         = lookup(soa_record.value, "tags", null)
    }
  }

  tags = var.tags
}
