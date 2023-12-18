# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Security Center Automation should exist. Changing this forces a new Security Center Automation to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Security Center Automation. Changing this forces a new Security Center Automation to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Security Center Automation should exist. Changing this forces a new Security Center Automation to be created."
  type        = string

}
variable "scopes" {
  description = "(REQUIRED) A list of scopes on which the automation logic is applied, at least one is required. Supported scopes are a subscription (in this format '/subscriptions/00000000-0000-0000-0000-000000000000') or a resource group under that subscription (in the format '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example'). The automation will only apply on defined scopes."
  type        = list(any)

}
variable "source" {
  description = "(REQUIRED) One or more 'source' blocks. A 'source' defines what data types will be processed and a set of rules to filter that data."
  type        = map(map(any))
}
#
# source block structure:
#   event_source (string) : (REQUIRED) Type of data that will trigger this automation. Must be one of 'Alerts', 'Assessments', 'AssessmentsSnapshot', 'RegulatoryComplianceAssessment', 'RegulatoryComplianceAssessmentSnapshot', 'SecureScoreControls', 'SecureScoreControlsSnapshot', 'SecureScores', 'SecureScoresSnapshot', 'SubAssessments' or 'SubAssessmentsSnapshot'. Note. assessments are also referred to as recommendations
#   rule_set (block)      : A set of rules which evaluate upon event and data interception. This is defined in one or more 'rule_set' blocks.
#
# rule block structure   :
#   expected_value (string): (REQUIRED) A value that will be compared with the value in 'property_path'.
#   operator (string)      : (REQUIRED) The comparison operator to use, must be one of: 'Contains', 'EndsWith', 'Equals', 'GreaterThan', 'GreaterThanOrEqualTo', 'LesserThan', 'LesserThanOrEqualTo', 'NotEquals', 'StartsWith'
#   property_path (string) : (REQUIRED) The JPath of the entity model property that should be checked.
#   property_type (string) : (REQUIRED) The data type of the compared operands, must be one of: 'Integer', 'String', 'Boolean' or 'Number'.
#
# rule_set block structure:
#   rule (block)            : (REQUIRED) One or more 'rule' blocks.


variable "action" {
  description = "(REQUIRED) One or more 'action' blocks. An 'action' tells this automation where the data is to be sent to upon being evaluated by the rules in the 'source'."
  type        = map(map(any))
}
#
# action block structure    :
#   type (string)             : (REQUIRED) Type of Azure resource to send data to. Must be set to one of: 'LogicApp', 'EventHub' or 'LogAnalytics'.
#   resource_id (string)      : (REQUIRED) The resource id of the target Logic App, Event Hub namespace or Log Analytics workspace.
#   connection_string (string): (Optional, but required when 'type' is 'EventHub') A connection string to send data to the target Event Hub namespace, this should include a key with send permissions.
#   trigger_url (string)      : (Optional, but required when 'type' is 'LogicApp') The callback URL to trigger the Logic App that will receive and process data sent by this automation. This can be found in the Azure Portal under 'See trigger history'



# OPTIONAL VARIABLES

variable "description" {
  description = "Specifies the description for the Security Center Automation."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Boolean to enable or disable this Security Center Automation. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags assigned to the resource."
  type        = map(any)
  default     = null
}
