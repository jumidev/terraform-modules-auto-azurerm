data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_private_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  subnet_id           = var.subnet_id

  private_service_connection {
    name                              = lookup(private_service_connection.value, "name")                 # (Required) 
    is_manual_connection              = lookup(private_service_connection.value, "is_manual_connection") # (Required) 
    private_connection_resource_id    = lookup(private_service_connection.value, "private_connection_resource_id", null)
    private_connection_resource_alias = lookup(private_service_connection.value, "private_connection_resource_alias", null)
    subresource_names                 = lookup(private_service_connection.value, "subresource_names", null)
    request_message                   = lookup(private_service_connection.value, "request_message", null)
  }


  ########################################
  # optional vars
  ########################################
  custom_network_interface_name = var.custom_network_interface_name

  dynamic "private_dns_zone_group" { # var.private_dns_zone_group
    for_each = var.private_dns_zone_group != null ? var.private_dns_zone_group : []
    content {
      name                 = private_dns_zone_group.key
      private_dns_zone_ids = lookup(private_dns_zone_group.value, "private_dns_zone_ids") # (Required) 
    }
  }


  dynamic "ip_configuration" { # var.ip_configuration
    for_each = var.ip_configuration != null ? var.ip_configuration : []
    content {
      name               = ip_configuration.key
      private_ip_address = lookup(ip_configuration.value, "private_ip_address") # (Required) 
      subresource_name   = lookup(ip_configuration.value, "subresource_name", null)
      member_name        = lookup(ip_configuration.value, "member_name", null)
    }
  }

  tags = var.tags
}
