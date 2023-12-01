# azurerm_security_center_automation

Manages Security Center Automation and Continuous Export. This resource supports three types of destination in the `action`, Logic Apps, Log Analytics and Event Hubs

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "security_center/security_center_automation" 
}

inputs = {
   location = "${location}" 
   name = "name of security_center_automation" 
   resource_group_name = "${resource_group}" 
   scopes = "scopes of security_center_automation" 
   source = {
      example_source = {
         event_source = "..."   
      }
  
   }
 
   action = {
      example_action = {
         type = "..."   
         resource_id = "..."   
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **location** | string |  The Azure Region where the Security Center Automation should exist. Changing this forces a new Security Center Automation to be created. | 
| **name** | string |  The name which should be used for this Security Center Automation. Changing this forces a new Security Center Automation to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Security Center Automation should exist. Changing this forces a new Security Center Automation to be created. | 
| **scopes** | list |  A list of scopes on which the automation logic is applied, at least one is required. Supported scopes are a subscription (in this format `/subscriptions/00000000-0000-0000-0000-000000000000`) or a resource group under that subscription (in the format `/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example`). The automation will only apply on defined scopes. | 
| **source** | [block](#source-block-structure) |  One or more `source` blocks. A `source` defines what data types will be processed and a set of rules to filter that data. | 
| **action** | [block](#action-block-structure) |  One or more `action` blocks. An `action` tells this automation where the data is to be sent to upon being evaluated by the rules in the `source`. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **description** | string |  -  |  Specifies the description for the Security Center Automation. | 
| **enabled** | bool |  `True`  |  Boolean to enable or disable this Security Center Automation. Defaults to `true`. | 
| **tags** | map |  -  |  A mapping of tags assigned to the resource. | 

### `rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `expected_value` | string | Yes | - | A value that will be compared with the value in 'property_path'. |
| `operator` | string | Yes | - | The comparison operator to use, must be one of: 'Contains', 'EndsWith', 'Equals', 'GreaterThan', 'GreaterThanOrEqualTo', 'LesserThan', 'LesserThanOrEqualTo', 'NotEquals', 'StartsWith' |
| `property_path` | string | Yes | - | The JPath of the entity model property that should be checked. |
| `property_type` | string | Yes | - | The data type of the compared operands, must be one of: 'Integer', 'String', 'Boolean' or 'Number'. |

### `action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Type of Azure resource to send data to. Must be set to one of: 'LogicApp', 'EventHub' or 'LogAnalytics'. |
| `resource_id` | string | Yes | - | The resource id of the target Logic App, Event Hub namespace or Log Analytics workspace. |
| `connection_string` | string | No | - | (Optional, but required when 'type' is 'EventHub') A connection string to send data to the target Event Hub namespace, this should include a key with send permissions. |
| `trigger_url` | string | No | - | (Optional, but required when 'type' is 'LogicApp') The callback URL to trigger the Logic App that will receive and process data sent by this automation. This can be found in the Azure Portal under 'See trigger history' |

### `source` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `event_source` | string | Yes | - | Type of data that will trigger this automation. Must be one of 'Alerts', 'Assessments', 'AssessmentsSnapshot', 'RegulatoryComplianceAssessment', 'RegulatoryComplianceAssessmentSnapshot', 'SecureScoreControls', 'SecureScoreControlsSnapshot', 'SecureScores', 'SecureScoresSnapshot', 'SubAssessments' or 'SubAssessmentsSnapshot'. Note. assessments are also referred to as recommendations |
| `rule_set` | [block](#source-block-structure) | No | - | A set of rules which evaluate upon event and data interception. This is defined in one or more 'rule_set' blocks. |

### `rule_set` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `rule` | [block](#rule_set-block-structure) | Yes | - | One or more 'rule' blocks. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Security Center Automation. | 

Additionally, all variables are provided as outputs.
