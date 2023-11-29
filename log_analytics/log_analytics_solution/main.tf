data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_log_analytics_workspace" "this" {
  name                = var.log_analytics_workspace_name
  resource_group_name = var.log_analytics_workspace_resource_group_name == null ? null : var.log_analytics_workspace_resource_group_name
}


resource "azurerm_log_analytics_solution" "this" {

  ########################################
  # required vars
  ########################################
  solution_name         = var.solution_name
  resource_group_name   = data.azurerm_resource_group.this.name
  location              = var.location
  workspace_resource_id = var.workspace_resource_id
  workspace_name        = data.azurerm_log_analytics_workspace.this.name

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
