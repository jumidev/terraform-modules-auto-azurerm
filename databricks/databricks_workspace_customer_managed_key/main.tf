

resource "azurerm_databricks_workspace_customer_managed_key" "this" {

  ########################################
  # required vars
  ########################################
  workspace_id     = var.workspace_id
  key_vault_key_id = var.key_vault_key_id
}
