# azurerm_monitor_activity_log_alert

Manages an Activity Log Alert within Azure Monitor.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_activity_log_alert" 
}

inputs = {
   name = "name of monitor_activity_log_alert" 
   resource_group_name = "${resource_group}" 
   scopes = "scopes of monitor_activity_log_alert" 
   criteria = "criteria of monitor_activity_log_alert" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the activity log alert. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the activity log alert instance. Changing this forces a new resource to be created. | 
| **var.scopes** | string | True | -  |  The Scope at which the Activity Log should be applied. A list of strings which could be a resource group , or a subscription, or a resource ID (such as a Storage Account). | 
| **var.criteria** | block | True | -  |  A `criteria` block. | 
| **var.action** | block | False | -  |  One or more `action` blocks. | 
| **var.enabled** | bool | False | `True`  |  Should this Activity Log Alert be enabled? Defaults to `true`. | 
| **var.description** | string | False | -  |  The description of this activity log alert. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 

### `criteria` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `category` | string | Yes | - | The category of the operation. Possible values are 'Administrative', 'Autoscale', 'Policy', 'Recommendation', 'ResourceHealth', 'Security' and 'ServiceHealth'. |
| `caller` | string | No | - | The email address or Azure Active Directory identifier of the user who performed the operation. |
| `operation_name` | string | No | - | The Resource Manager Role-Based Access Control operation name. Supported operation should be of the form: '<resourceProvider>/<resourceType>/<operation>'. |
| `resource_provider` | string | No | - | The name of the resource provider monitored by the activity log alert. |
| `resource_providers` | list | No | - | A list of names of resource providers monitored by the activity log alert. |
| `resource_type` | string | No | - | The resource type monitored by the activity log alert. |
| `resource_types` | list | No | - | A list of resource types monitored by the activity log alert. |
| `resource_group` | string | No | - | The name of resource group monitored by the activity log alert. |
| `resource_groups` | list | No | - | A list of names of resource groups monitored by the activity log alert. |
| `resource_id` | string | No | - | The specific resource monitored by the activity log alert. It should be within one of the 'scopes'. |
| `resource_ids` | list | No | - | A list of specific resources monitored by the activity log alert. It should be within one of the 'scopes'. |
| `level` | string | No | - | The severity level of the event. Possible values are 'Verbose', 'Informational', 'Warning', 'Error', and 'Critical'. |
| `levels` | string | No | - | A list of severity level of the event. Possible values are 'Verbose', 'Informational', 'Warning', 'Error', and 'Critical'. |
| `status` | string | No | - | The status of the event. For example, 'Started', 'Failed', or 'Succeeded'. |
| `statuses` | list | No | - | A list of status of the event. For example, 'Started', 'Failed', or 'Succeeded'. |
| `sub_status` | string | No | - | The sub status of the event. |
| `sub_statuses` | list | No | - | A list of sub status of the event. |
| `recommendation_type` | string | No | - | The recommendation type of the event. It is only allowed when 'category' is 'Recommendation'. |
| `recommendation_category` | string | No | - | The recommendation category of the event. Possible values are 'Cost', 'Reliability', 'OperationalExcellence', 'HighAvailability' and 'Performance'. It is only allowed when 'category' is 'Recommendation'. |
| `recommendation_impact` | string | No | - | The recommendation impact of the event. Possible values are 'High', 'Medium' and 'Low'. It is only allowed when 'category' is 'Recommendation'. |
| `resource_health` | string | No | - | A block to define fine grain resource health settings. |
| `service_health` | string | No | - | A block to define fine grain service health settings. |

### `action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action_group_id` | string | Yes | - | The ID of the Action Group can be sourced from [the 'azurerm_monitor_action_group' resource](./monitor_action_group.html). |
| `webhook_properties` | string | No | - | The map of custom string properties to include with the post operation. These data are appended to the webhook payload. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the activity log alert. | 

Additionally, all variables are provided as outputs.
