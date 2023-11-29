data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_virtual_wan" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  disable_vpn_encryption            = var.disable_vpn_encryption            # Default: False
  allow_branch_to_branch_traffic    = var.allow_branch_to_branch_traffic    # Default: True
  office365_local_breakout_category = var.office365_local_breakout_category # Default: None
  type                              = var.type                              # Default: Standard
  tags                              = var.tags
}
