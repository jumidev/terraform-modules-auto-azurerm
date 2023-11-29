

resource "azurerm_subscription" "this" {

  ########################################
  # required vars
  ########################################
  subscription_name = var.subscription_name

  ########################################
  # optional vars
  ########################################
  alias            = var.alias
  billing_scope_id = var.billing_scope_id
  subscription_id  = var.subscription_id
  workload         = var.workload
  tags             = var.tags
}
