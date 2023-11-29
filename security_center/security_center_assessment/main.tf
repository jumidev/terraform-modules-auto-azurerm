

resource "azurerm_security_center_assessment" "this" {

  ########################################
  # required vars
  ########################################
  assessment_policy_id = var.assessment_policy_id
  target_resource_id   = var.target_resource_id

  status {
    code        = lookup(status.value, "code") # (Required) 
    cause       = lookup(status.value, "cause", null)
    description = lookup(status.value, "description", null)
  }


  ########################################
  # optional vars
  ########################################
  additional_data = var.additional_data
}
