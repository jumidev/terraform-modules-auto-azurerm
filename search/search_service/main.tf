data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_search_service" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  sku                 = var.sku

  ########################################
  # optional vars
  ########################################
  allowed_ips                              = var.allowed_ips
  authentication_failure_mode              = var.authentication_failure_mode
  customer_managed_key_enforcement_enabled = var.customer_managed_key_enforcement_enabled # Default: False
  hosting_mode                             = var.hosting_mode                             # Default: default

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type = lookup(identity.value, "type") # (Required) possible values: SystemAssigned
    }
  }

  local_authentication_enabled  = var.local_authentication_enabled  # Default: True
  partition_count               = var.partition_count               # Default: 1
  public_network_access_enabled = var.public_network_access_enabled # Default: True
  replica_count                 = var.replica_count
  semantic_search_sku           = var.semantic_search_sku
  tags                          = var.tags
}
