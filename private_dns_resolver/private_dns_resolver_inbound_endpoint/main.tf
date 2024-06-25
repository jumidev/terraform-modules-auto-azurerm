

resource "azurerm_private_dns_resolver_inbound_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  private_dns_resolver_id = var.private_dns_resolver_id

  ip_configurations {
    subnet_id                    = lookup(ip_configurations.value, "subnet_id") # (Required) 
    private_ip_address           = lookup(ip_configurations.value, "private_ip_address", null)
    private_ip_allocation_method = lookup(ip_configurations.value, "private_ip_allocation_method", "Dynamic")
  }

  location = var.location

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
