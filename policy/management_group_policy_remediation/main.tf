

resource "azurerm_management_group_policy_remediation" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  management_group_id  = var.management_group_id
  policy_assignment_id = var.policy_assignment_id

  ########################################
  # optional vars
  ########################################
  policy_definition_id           = var.policy_definition_id
  policy_definition_reference_id = var.policy_definition_reference_id
  location_filters               = var.location_filters
  resource_discovery_mode        = var.resource_discovery_mode # Default: ExistingNonCompliant
  failure_percentage             = var.failure_percentage
  parallel_deployments           = var.parallel_deployments
  resource_count                 = var.resource_count
}
