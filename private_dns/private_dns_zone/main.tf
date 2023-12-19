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
      ttl          = lookup(soa_record.value, "ttl", 3600)
      tags         = lookup(soa_record.value, "tags", null)
    }
  }

  tags = var.tags
}

##############################################################################################
# optional azurerm_private_dns_zone_virtual_network_link 
##############################################################################################
resource "azurerm_private_dns_zone_virtual_network_link" "this" {
  count                 = var.private_dns_zone_virtual_network_link != null ? 1 : 0
  name                  = lookup(var.private_dns_zone_virtual_network_link, "name")
  private_dns_zone_name = azurerm_private_dns_zone.this.name
  resource_group_name   = azurerm_resource_group.this.name
  virtual_network_id    = lookup(var.private_dns_zone_virtual_network_link, "virtual_network_id")
  registration_enabled  = lookup(var.private_dns_zone_virtual_network_link, "registration_enabled", false)
  tags                  = lookup(var.private_dns_zone_virtual_network_link, "tags", null)
}
