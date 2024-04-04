

resource "azurerm_public_ip" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = var.allocation_method

  ########################################
  # optional vars
  ########################################
  zones                   = var.zones
  ddos_protection_mode    = var.ddos_protection_mode # Default: False
  ddos_protection_plan_id = var.ddos_protection_plan_id
  domain_name_label       = var.domain_name_label
  edge_zone               = var.edge_zone
  idle_timeout_in_minutes = var.idle_timeout_in_minutes
  ip_tags                 = var.ip_tags
  ip_version              = var.ip_version # Default: IPv4
  public_ip_prefix_id     = var.public_ip_prefix_id
  reverse_fqdn            = var.reverse_fqdn
  sku                     = var.sku      # Default: Basic
  sku_tier                = var.sku_tier # Default: Regional
  tags                    = var.tags
}

##############################################################################################
# optional azurerm_dns_a_record 
##############################################################################################
resource "azurerm_dns_a_record" "this" {
  count               = var.dns_a_record != null ? 1 : 0
  name                = lookup(var.dns_a_record, "name")
  resource_group_name = lookup(var.dns_a_record, "resource_group_name")
  zone_name           = lookup(var.dns_a_record, "zone_name")
  ttl                 = lookup(var.dns_a_record, "ttl")
  records             = azurerm_public_ip.this.ip_address
  target_resource_id  = lookup(var.dns_a_record, "target_resource_id", null)
  tags                = lookup(var.dns_a_record, "tags", null)
}

##############################################################################################
# optional azurerm_nat_gateway_public_ip_association 
##############################################################################################
resource "azurerm_nat_gateway_public_ip_association" "this" {
  count                = var.nat_gateway_id != null ? 1 : 0
  nat_gateway_id       = var.nat_gateway_id
  public_ip_address_id = azurerm_public_ip.this.id
}

##############################################################################################
# optional azurerm_private_dns_a_record 
##############################################################################################
resource "azurerm_private_dns_a_record" "this" {
  count               = var.private_dns_a_record != null ? 1 : 0
  name                = lookup(var.private_dns_a_record, "name")
  resource_group_name = lookup(var.private_dns_a_record, "resource_group_name")
  zone_name           = lookup(var.private_dns_a_record, "zone_name")
  ttl                 = lookup(var.private_dns_a_record, "ttl")
  records             = azurerm_public_ip.this.ip_address
  tags                = lookup(var.private_dns_a_record, "tags", null)
}
