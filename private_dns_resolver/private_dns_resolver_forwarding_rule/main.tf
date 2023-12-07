

resource "azurerm_private_dns_resolver_forwarding_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  dns_forwarding_ruleset_id = var.dns_forwarding_ruleset_id
  domain_name               = var.domain_name
  target_dns_servers        = var.target_dns_servers

  ########################################
  # optional vars
  ########################################
  enabled  = var.enabled # Default: True
  metadata = var.metadata
}
