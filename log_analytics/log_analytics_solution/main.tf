

resource "azurerm_log_analytics_solution" "this" {

  ########################################
  # required vars
  ########################################
  solution_name         = var.solution_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  workspace_resource_id = var.workspace_resource_id
  workspace_name        = var.workspace_name

  plan {
    publisher      = lookup(plan.value, "publisher") # (Required) 
    product        = lookup(plan.value, "product")   # (Required) 
    promotion_code = lookup(plan.value, "promotion_code", null)
  }


  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
