

resource "azurerm_private_link_service" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  dynamic "nat_ip_configuration" { # var.nat_ip_configurations
    for_each = var.nat_ip_configurations != null ? var.nat_ip_configurations : []
    content {
      name                       = nat_ip_configuration.key
      subnet_id                  = lookup(nat_ip_configuration.value, "subnet_id")     # (Required) possible values: enforce_private_link_service_network_policies | true
      primary                    = lookup(nat_ip_configuration.value, "primary", true) # (Required) 
      private_ip_address         = lookup(nat_ip_configuration.value, "private_ip_address", null)
      private_ip_address_version = lookup(nat_ip_configuration.value, "private_ip_address_version", "IPv4")
    }
  }

  load_balancer_frontend_ip_configuration_ids = var.load_balancer_frontend_ip_configuration_ids

  ########################################
  # optional vars
  ########################################
  auto_approval_subscription_ids = var.auto_approval_subscription_ids
  enable_proxy_protocol          = var.enable_proxy_protocol
  fqdns                          = var.fqdns
  tags                           = var.tags
  visibility_subscription_ids    = var.visibility_subscription_ids
}
