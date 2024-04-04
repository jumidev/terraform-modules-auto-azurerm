

resource "azurerm_policy_set_definition" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  policy_type  = var.policy_type
  display_name = var.display_name

  dynamic "policy_definition_reference" { # var.policy_definition_references
    for_each = var.policy_definition_references != null ? var.policy_definition_references : []
    content {
      policy_definition_id = lookup(policy_definition_reference.value, "policy_definition_id") # (Required) 
      parameter_values     = lookup(policy_definition_reference.value, "parameter_values", null)
      reference_id         = lookup(policy_definition_reference.value, "reference_id", null)
      policy_group_names   = lookup(policy_definition_reference.value, "policy_group_names", null)
    }
  }


  ########################################
  # optional vars
  ########################################

  dynamic "policy_definition_group" { # var.policy_definition_groups
    for_each = var.policy_definition_groups != null ? var.policy_definition_groups : []
    content {
      name                            = policy_definition_group.key
      display_name                    = lookup(policy_definition_group.value, "display_name", null)
      category                        = lookup(policy_definition_group.value, "category", null)
      description                     = lookup(policy_definition_group.value, "description", null)
      additional_metadata_resource_id = lookup(policy_definition_group.value, "additional_metadata_resource_id", null)
    }
  }

  description         = var.description
  management_group_id = var.management_group_id
  metadata            = var.metadata
  parameters          = var.parameters
}
