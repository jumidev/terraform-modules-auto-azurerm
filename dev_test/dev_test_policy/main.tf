data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_dev_test_policy" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  policy_set_name     = var.policy_set_name
  lab_name            = var.lab_name
  resource_group_name = data.azurerm_resource_group.this.name
  evaluator_type      = var.evaluator_type
  threshold           = var.threshold

  ########################################
  # optional vars
  ########################################
  description = var.description
  fact_data   = var.fact_data
  tags        = var.tags
}
