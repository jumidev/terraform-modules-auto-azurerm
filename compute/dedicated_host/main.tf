

resource "azurerm_dedicated_host" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  dedicated_host_group_id = var.dedicated_host_group_id
  location                = var.location
  sku_name                = var.sku_name
  platform_fault_domain   = var.platform_fault_domain

  ########################################
  # optional vars
  ########################################
  auto_replace_on_failure = var.auto_replace_on_failure # Default: True
  license_type            = var.license_type            # Default: None
  tags                    = var.tags
}
