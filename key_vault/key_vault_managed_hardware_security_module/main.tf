data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_key_vault_managed_hardware_security_module" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  admin_object_ids    = var.admin_object_ids
  sku_name            = var.sku_name
  tenant_id           = var.tenant_id

  ########################################
  # optional vars
  ########################################
  purge_protection_enabled      = var.purge_protection_enabled
  soft_delete_retention_days    = var.soft_delete_retention_days    # Default: 90
  public_network_access_enabled = var.public_network_access_enabled # Default: True

  dynamic "network_acls" { # var.network_acls
    for_each = var.network_acls != null ? var.network_acls : []
    content {
      bypass         = lookup(network_acls.value, "bypass")         # (Required) possible values: AzureServices | None
      default_action = lookup(network_acls.value, "default_action") # (Required) possible values: Allow | Deny
    }
  }

  security_domain_key_vault_certificate_ids = var.security_domain_key_vault_certificate_ids
  security_domain_quorum                    = var.security_domain_quorum
  tags                                      = var.tags
}
