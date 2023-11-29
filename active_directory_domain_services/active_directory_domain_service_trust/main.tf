

resource "azurerm_active_directory_domain_service_trust" "this" {

  ########################################
  # required vars
  ########################################
  domain_service_id      = var.domain_service_id
  name                   = var.name
  password               = var.password
  trusted_domain_dns_ips = var.trusted_domain_dns_ips
  trusted_domain_fqdn    = var.trusted_domain_fqdn
}
