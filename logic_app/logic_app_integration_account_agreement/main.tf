data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_logic_app_integration_account_agreement" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  resource_group_name      = data.azurerm_resource_group.this.name
  integration_account_name = var.integration_account_name
  agreement_type           = var.agreement_type
  content                  = var.content

  guest_identity {
    qualifier = lookup(guest_identity.value, "qualifier") # (Required) 
    value     = lookup(guest_identity.value, "value")     # (Required) 
  }

  guest_partner_name = var.guest_partner_name

  host_identity {
    qualifier = lookup(host_identity.value, "qualifier") # (Required) 
    value     = lookup(host_identity.value, "value")     # (Required) 
  }

  host_partner_name = var.host_partner_name

  ########################################
  # optional vars
  ########################################
  metadata = var.metadata
}
