

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
  resource_group_name = var.resource_group_name

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

##############################################################################################
# optional azurerm_dns_a_record 
##############################################################################################
resource "azurerm_dns_a_record" "this" {
  count               = var.dns_a_record != null ? 1 : 0
  name                = lookup(var.dns_a_record, "name")
  resource_group_name = lookup(var.dns_a_record, "resource_group_name")
  zone_name           = lookup(var.dns_a_record, "zone_name")
  ttl                 = lookup(var.dns_a_record, "ttl", 300)
  records             = azurerm_network_interface.this.private_ip_addresses
  target_resource_id  = lookup(var.dns_a_record, "target_resource_id", null)
  tags                = lookup(var.dns_a_record, "tags", null)
}

##############################################################################################
# optional azurerm_network_interface_application_security_group_association 
##############################################################################################
resource "azurerm_network_interface_application_security_group_association" "this" {
  count                         = var.application_security_group_id != null ? 1 : 0
  network_interface_id          = azurerm_network_interface.this.id
  application_security_group_id = var.application_security_group_id
}

##############################################################################################
# optional azurerm_network_interface_backend_address_pool_association 
##############################################################################################
resource "azurerm_network_interface_backend_address_pool_association" "this" {
  count                   = var.network_interface_backend_address_pool_association != null ? 1 : 0
  network_interface_id    = azurerm_network_interface.this.id
  ip_configuration_name   = lookup(var.network_interface_backend_address_pool_association, "ip_configuration_name", "primary")
  backend_address_pool_id = lookup(var.network_interface_backend_address_pool_association, "backend_address_pool_id")
}

##############################################################################################
# optional azurerm_network_interface_security_group_association 
##############################################################################################
resource "azurerm_network_interface_security_group_association" "this" {
  count                     = var.network_security_group_id != null ? 1 : 0
  network_interface_id      = azurerm_network_interface.this.id
  network_security_group_id = var.network_security_group_id
}

##############################################################################################
# optional azurerm_network_interface_application_gateway_backend_address_pool_association 
##############################################################################################
resource "azurerm_network_interface_application_gateway_backend_address_pool_association" "this" {
  count                   = var.network_interface_application_gateway_backend_address_pool_association != null ? 1 : 0
  network_interface_id    = azurerm_network_interface.this.id
  ip_configuration_name   = lookup(var.network_interface_application_gateway_backend_address_pool_association, "ip_configuration_name", "primary")
  backend_address_pool_id = lookup(var.network_interface_application_gateway_backend_address_pool_association, "backend_address_pool_id")
}

##############################################################################################
# optional azurerm_network_interface_nat_rule_association 
##############################################################################################
resource "azurerm_network_interface_nat_rule_association" "this" {
  count                 = var.network_interface_nat_rule_association != null ? 1 : 0
  network_interface_id  = azurerm_network_interface.this.id
  ip_configuration_name = lookup(var.network_interface_nat_rule_association, "ip_configuration_name", "primary")
  nat_rule_id           = lookup(var.network_interface_nat_rule_association, "nat_rule_id")
}

##############################################################################################
# optional azurerm_private_dns_a_record 
##############################################################################################
resource "azurerm_private_dns_a_record" "this" {
  count               = var.private_dns_a_record != null ? 1 : 0
  name                = lookup(var.private_dns_a_record, "name")
  resource_group_name = lookup(var.private_dns_a_record, "resource_group_name")
  zone_name           = lookup(var.private_dns_a_record, "zone_name")
  ttl                 = lookup(var.private_dns_a_record, "ttl", 300)
  records             = azurerm_network_interface.this.private_ip_addresses
  tags                = lookup(var.private_dns_a_record, "tags", null)
}
