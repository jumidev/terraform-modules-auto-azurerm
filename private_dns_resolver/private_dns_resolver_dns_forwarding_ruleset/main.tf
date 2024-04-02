

resource "azurerm_private_dns_resolver_dns_forwarding_ruleset" "this" {

  ########################################
  # required vars
  ########################################
  name                                       = var.name
  resource_group_name                        = var.resource_group_name
  private_dns_resolver_outbound_endpoint_ids = var.private_dns_resolver_outbound_endpoint_ids
  location                                   = var.location

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
