

resource "azurerm_portal_tenant_configuration" "this" {

  ########################################
  # required vars
  ########################################
  private_markdown_storage_enforced = var.private_markdown_storage_enforced
}
