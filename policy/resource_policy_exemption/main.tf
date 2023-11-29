

resource "azurerm_resource_policy_exemption" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  resource_id          = var.resource_id
  exemption_category   = var.exemption_category
  policy_assignment_id = var.policy_assignment_id

  ########################################
  # optional vars
  ########################################
  description                     = var.description
  display_name                    = var.display_name
  expires_on                      = var.expires_on
  policy_definition_reference_ids = var.policy_definition_reference_ids
  metadata                        = var.metadata
}
