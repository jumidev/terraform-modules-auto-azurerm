data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_logic_app_integration_account_partner" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  resource_group_name      = data.azurerm_resource_group.this.name
  integration_account_name = var.integration_account_name

  business_identity {
    qualifier = lookup(business_identity.value, "qualifier") # (Required) 
    value     = lookup(business_identity.value, "value")     # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  metadata = var.metadata
}
