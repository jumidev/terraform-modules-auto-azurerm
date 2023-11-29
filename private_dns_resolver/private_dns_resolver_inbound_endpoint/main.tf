

resource "azurerm_private_dns_resolver_inbound_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  private_dns_resolver_id = var.private_dns_resolver_id

  ip_configurations {
    private_ip_allocation_method = lookup(ip_configurations.value, "private_ip_allocation_method", "Dynamic")
    subnet_id                    = lookup(ip_configurations.value, "subnet_id") # (Required) 
  }

  location = var.location

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
