

resource "azurerm_databricks_workspace" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku

  ########################################
  # optional vars
  ########################################
  load_balancer_backend_address_pool_id               = var.load_balancer_backend_address_pool_id
  managed_services_cmk_key_vault_key_id               = var.managed_services_cmk_key_vault_key_id
  managed_disk_cmk_key_vault_key_id                   = var.managed_disk_cmk_key_vault_key_id
  managed_disk_cmk_rotation_to_latest_version_enabled = var.managed_disk_cmk_rotation_to_latest_version_enabled
  managed_resource_group_name                         = var.managed_resource_group_name
  customer_managed_key_enabled                        = var.customer_managed_key_enabled      # Default: False
  infrastructure_encryption_enabled                   = var.infrastructure_encryption_enabled # Default: False
  public_network_access_enabled                       = var.public_network_access_enabled     # Default: True
  network_security_group_rules_required               = var.network_security_group_rules_required

  dynamic "custom_parameters" { # var.custom_parameters
    for_each = var.custom_parameters != null ? var.custom_parameters : []
    content {
      machine_learning_workspace_id                        = lookup(custom_parameters.value, "machine_learning_workspace_id", null)
      nat_gateway_name                                     = lookup(custom_parameters.value, "nat_gateway_name", "nat-gateway")
      public_ip_name                                       = lookup(custom_parameters.value, "public_ip_name", "nat-gw-public-ip")
      no_public_ip                                         = lookup(custom_parameters.value, "no_public_ip", false)
      public_subnet_name                                   = lookup(custom_parameters.value, "public_subnet_name", null)
      public_subnet_network_security_group_association_id  = lookup(custom_parameters.value, "public_subnet_network_security_group_association_id", null)
      private_subnet_name                                  = lookup(custom_parameters.value, "private_subnet_name", null)
      private_subnet_network_security_group_association_id = lookup(custom_parameters.value, "private_subnet_network_security_group_association_id", null)
      storage_account_name                                 = lookup(custom_parameters.value, "storage_account_name", "dbstoragel6mfeghoe5kxu")
      storage_account_sku_name                             = lookup(custom_parameters.value, "storage_account_sku_name", "Standard_GRS")
      virtual_network_id                                   = lookup(custom_parameters.value, "virtual_network_id", null)
      vnet_address_prefix                                  = lookup(custom_parameters.value, "vnet_address_prefix", "10.139")
    }
  }

  tags = var.tags
}
