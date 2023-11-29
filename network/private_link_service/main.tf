data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_private_link_service" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  nat_ip_configuration {
    name                       = lookup(nat_ip_configuration.value, "name")      # (Required) 
    subnet_id                  = lookup(nat_ip_configuration.value, "subnet_id") # (Required) 
    primary                    = lookup(nat_ip_configuration.value, "primary")   # (Required) 
    private_ip_address         = lookup(nat_ip_configuration.value, "private_ip_address", null)
    private_ip_address_version = lookup(nat_ip_configuration.value, "private_ip_address_version", "IPv4")
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
