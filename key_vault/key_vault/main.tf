data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_key_vault" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name
  sku_name            = var.sku_name
  tenant_id           = var.tenant_id

  ########################################
  # optional vars
  ########################################

  dynamic "access_policy" { # var.access_policy
    for_each = var.access_policy != null ? var.access_policy : []
    content {
      tenant_id               = lookup(access_policy.value, "tenant_id") # (Required) 
      object_id               = lookup(access_policy.value, "object_id") # (Required) 
      application_id          = lookup(access_policy.value, "application_id", null)
      certificate_permissions = lookup(access_policy.value, "certificate_permissions", null)
      key_permissions         = lookup(access_policy.value, "key_permissions", null)
      secret_permissions      = lookup(access_policy.value, "secret_permissions", null)
      storage_permissions     = lookup(access_policy.value, "storage_permissions", null)
    }
  }

  enabled_for_deployment          = var.enabled_for_deployment
  enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  enabled_for_template_deployment = var.enabled_for_template_deployment
  enable_rbac_authorization       = var.enable_rbac_authorization

  dynamic "network_acls" { # var.network_acls
    for_each = var.network_acls != null ? var.network_acls : []
    content {
      bypass                     = lookup(network_acls.value, "bypass")         # (Required) possible values: AzureServices | None
      default_action             = lookup(network_acls.value, "default_action") # (Required) possible values: Allow | Deny
      ip_rules                   = lookup(network_acls.value, "ip_rules", null)
      virtual_network_subnet_ids = lookup(network_acls.value, "virtual_network_subnet_ids", null)
    }
  }

  purge_protection_enabled      = var.purge_protection_enabled
  public_network_access_enabled = var.public_network_access_enabled # Default: True
  soft_delete_retention_days    = var.soft_delete_retention_days

  dynamic "contact" { # var.contact
    for_each = var.contact != null ? var.contact : []
    content {
      email = lookup(contact.value, "email") # (Required) 
      name  = contact.key
      phone = lookup(contact.value, "phone", null)
    }
  }

  tags = var.tags
}
