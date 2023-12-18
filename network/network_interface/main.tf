data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_network_interface" "this" {

  ########################################
  # required vars
  ########################################

  dynamic "ip_configuration" { # var.ip_configuration
    for_each = var.ip_configuration != null ? var.ip_configuration : []
    content {
      name                                               = ip_configuration.key
      gateway_load_balancer_frontend_ip_configuration_id = lookup(ip_configuration.value, "gateway_load_balancer_frontend_ip_configuration_id", null)
      subnet_id                                          = lookup(ip_configuration.value, "subnet_id", null)
      private_ip_address_version                         = lookup(ip_configuration.value, "private_ip_address_version", "IPv4")
      private_ip_address_allocation                      = lookup(ip_configuration.value, "private_ip_address_allocation", "Dynamic") # (Required) possible values: Dynamic | Static
      public_ip_address_id                               = lookup(ip_configuration.value, "public_ip_address_id", null)
      primary                                            = lookup(ip_configuration.value, "primary", true)
      private_ip_address                                 = lookup(ip_configuration.value, "private_ip_address", null)
    }
  }

  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  auxiliary_mode                = var.auxiliary_mode
  auxiliary_sku                 = var.auxiliary_sku
  dns_servers                   = var.dns_servers
  edge_zone                     = var.edge_zone
  enable_ip_forwarding          = var.enable_ip_forwarding          # Default: False
  enable_accelerated_networking = var.enable_accelerated_networking # Default: False
  internal_dns_name_label       = var.internal_dns_name_label
  tags                          = var.tags
}
