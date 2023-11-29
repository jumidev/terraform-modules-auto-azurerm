data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_confidential_ledger" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  dynamic "azuread_based_service_principal" { # var.azuread_based_service_principal
    for_each = var.azuread_based_service_principal != null ? var.azuread_based_service_principal : []
    content {
      ledger_role_name = lookup(azuread_based_service_principal.value, "ledger_role_name") # (Required) possible values: Administrator | Contributor | Reader
      principal_id     = lookup(azuread_based_service_principal.value, "principal_id")     # (Required) 
      tenant_id        = lookup(azuread_based_service_principal.value, "tenant_id")        # (Required) 
    }
  }

  ledger_type = var.ledger_type

  ########################################
  # optional vars
  ########################################

  dynamic "certificate_based_security_principal" { # var.certificate_based_security_principal
    for_each = var.certificate_based_security_principal != null ? var.certificate_based_security_principal : []
    content {
      ledger_role_name = lookup(certificate_based_security_principal.value, "ledger_role_name") # (Required) possible values: Administrator | Contributor | Reader
      pem_public_key   = lookup(certificate_based_security_principal.value, "pem_public_key")   # (Required) 
    }
  }

  tags = var.tags
}
