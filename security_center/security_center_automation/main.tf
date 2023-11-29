data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_security_center_automation" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  scopes              = var.scopes

  dynamic "source" { # var.source
    for_each = var.source != null ? var.source : []
    content {
      event_source = lookup(source.value, "event_source") # (Required) possible values: Alerts | Assessments | AssessmentsSnapshot | RegulatoryComplianceAssessment | RegulatoryComplianceAssessmentSnapshot | SecureScoreControls | SecureScoreControlsSnapshot | SecureScores | SecureScoresSnapshot | SubAssessments | SubAssessmentsSnapshot

      dynamic "rule_set" { # source.value.rule_set
        for_each = source.value.rule_set != null ? source.value.rule_set : []
        content {

          dynamic "rule" { # rule_set.value.rule
            for_each = rule_set.value.rule != null ? rule_set.value.rule : []
            content {
              expected_value = lookup(rule.value, "expected_value") # (Required) 
              operator       = lookup(rule.value, "operator")       # (Required) possible values: Contains | EndsWith | Equals | GreaterThan | GreaterThanOrEqualTo | LesserThan | LesserThanOrEqualTo | NotEquals | StartsWith
              property_path  = lookup(rule.value, "property_path")  # (Required) 
              property_type  = lookup(rule.value, "property_type")  # (Required) possible values: Integer | String | Boolean | Number
            }
          }

        }
      }

    }
  }


  dynamic "action" { # var.action
    for_each = var.action != null ? var.action : []
    content {
      type              = lookup(action.value, "type")        # (Required) 
      resource_id       = lookup(action.value, "resource_id") # (Required) 
      connection_string = lookup(action.value, "connection_string", null)
      trigger_url       = lookup(action.value, "trigger_url", null)
    }
  }


  ########################################
  # optional vars
  ########################################
  description = var.description
  enabled     = var.enabled # Default: True
  tags        = var.tags
}
