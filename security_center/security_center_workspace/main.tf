

resource "azurerm_security_center_workspace" "this" {

  ########################################
  # required vars
  ########################################
  scope        = var.scope
  workspace_id = var.workspace_id
}
