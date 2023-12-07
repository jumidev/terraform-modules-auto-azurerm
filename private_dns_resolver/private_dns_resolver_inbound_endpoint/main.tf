

resource "azurerm_private_dns_resolver_inbound_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  private_dns_resolver_id = var.private_dns_resolver_id
  ip_configurations       = var.ip_configurations
  location                = var.location

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
