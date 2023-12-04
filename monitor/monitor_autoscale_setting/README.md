# azurerm_monitor_autoscale_setting

Manages a AutoScale Setting which can be applied to Virtual Machine Scale Sets, App Services and other scalable resources.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_autoscale_setting" 
}

inputs = {
   name = "name of monitor_autoscale_setting" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   profile = {
      example_profile = {
         capacity = "..."   
      }
  
   }
 
   target_resource_id = "target_resource_id of monitor_autoscale_setting" 
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
| **name** | string |  The name of the AutoScale Setting. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in the AutoScale Setting should be created. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the AutoScale Setting should exist. Changing this forces a new resource to be created. | 
| **profile** | [block](#profile-block-structure) |  Specifies one or more (up to 20) `profile` blocks. | 
| **target_resource_id** | string |  Specifies the resource ID of the resource that the autoscale setting should be added to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **enabled** | bool |  `True`  |  Specifies whether automatic scaling is enabled for the target resource. Defaults to `true`. | 
| **notification** | [block](#notification-block-structure) |  -  |  Specifies a `notification` block. | 
| **predictive** | [block](#predictive-block-structure) |  -  |  A `predictive` block. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `fixed_date` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `end` | string | Yes | - | Specifies the end date for the profile, formatted as an RFC3339 date string. |
| `start` | string | Yes | - | Specifies the start date for the profile, formatted as an RFC3339 date string. |
| `timezone` | string | No | UTC | The Time Zone of the 'start' and 'end' times. A list of [possible values can be found here](https://msdn.microsoft.com/en-us/library/azure/dn931928.aspx). Defaults to 'UTC'. |

### `email` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `send_to_subscription_administrator` | bool | No | False | Should email notifications be sent to the subscription administrator? Defaults to 'false'. |
| `send_to_subscription_co_administrator` | bool | No | False | Should email notifications be sent to the subscription co-administrator? Defaults to 'false'. |
| `custom_emails` | string | No | - | Specifies a list of custom email addresses to which the email notifications will be sent. |

### `dimensions` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The dimension operator. Possible values are 'Equals' and 'NotEquals'. 'Equals' means being equal to any of the values. 'NotEquals' means being not equal to any of the values. |
| `values` | list | Yes | - | A list of dimension values. |

### `webhook` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `service_uri` | string | Yes | - | The HTTPS URI which should receive scale notifications. |
| `properties` | string | No | - | A map of settings. |

### `predictive` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `scale_mode` | string | Yes | - | Specifies the predictive scale mode. Possible values are 'Enabled' or 'ForecastOnly'. |
| `look_ahead_time` | string | No | - | Specifies the amount of time by which instances are launched in advance. It must be between 'PT1M' and 'PT1H' in ISO 8601 format. |

### `rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `metric_trigger` | [block](#rule-block-structure) | Yes | - | A 'metric_trigger' block. |
| `scale_action` | [block](#rule-block-structure) | Yes | - | A 'scale_action' block. |

### `recurrence` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `timezone` | string | No | UTC | The Time Zone used for the 'hours' field. A list of [possible values can be found here](https://msdn.microsoft.com/en-us/library/azure/dn931928.aspx). Defaults to 'UTC'. |
| `days` | string | Yes | - | A list of days that this profile takes effect on. Possible values include 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' and 'Sunday'. |
| `hours` | string | Yes | - | A list containing a single item, which specifies the Hour interval at which this recurrence should be triggered (in 24-hour time). Possible values are from '0' to '23'. |
| `minutes` | int | Yes | - | A list containing a single item which specifies the Minute interval at which this recurrence should be triggered. |

### `scale_action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cooldown` | string | Yes | - | The amount of time to wait since the last scaling action before this action occurs. Must be between 1 minute and 1 week and formatted as a ISO 8601 string. |
| `direction` | string | Yes | - | The scale direction. Possible values are 'Increase' and 'Decrease'. |
| `type` | string | Yes | - | The type of action that should occur. Possible values are 'ChangeCount', 'ExactCount', 'PercentChangeCount' and 'ServiceAllowedNextValue'. |
| `value` | int | Yes | - | The number of instances involved in the scaling action. |

### `notification` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email` | [block](#notification-block-structure) | No | - | A 'email' block. |
| `webhook` | [block](#notification-block-structure) | No | - | One or more 'webhook' blocks. |

### `metric_trigger` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `metric_name` | string | Yes | - | The name of the metric that defines what the rule monitors, such as 'Percentage CPU' for 'Virtual Machine Scale Sets' and 'CpuPercentage' for 'App Service Plan'. |
| `metric_resource_id` | string | Yes | - | The ID of the Resource which the Rule monitors. |
| `operator` | string | Yes | - | Specifies the operator used to compare the metric data and threshold. Possible values are: 'Equals', 'NotEquals', 'GreaterThan', 'GreaterThanOrEqual', 'LessThan', 'LessThanOrEqual'. |
| `statistic` | string | Yes | - | Specifies how the metrics from multiple instances are combined. Possible values are 'Average', 'Max', 'Min' and 'Sum'. |
| `time_aggregation` | string | Yes | - | Specifies how the data that's collected should be combined over time. Possible values include 'Average', 'Count', 'Maximum', 'Minimum', 'Last' and 'Total'. |
| `time_grain` | string | Yes | - | Specifies the granularity of metrics that the rule monitors, which must be one of the pre-defined values returned from the metric definitions for the metric. This value must be between 1 minute and 12 hours an be formatted as an ISO 8601 string. |
| `time_window` | string | Yes | - | Specifies the time range for which data is collected, which must be greater than the delay in metric collection (which varies from resource to resource). This value must be between 5 minutes and 12 hours and be formatted as an ISO 8601 string. |
| `threshold` | string | Yes | - | Specifies the threshold of the metric that triggers the scale action. |
| `metric_namespace` | string | No | - | The namespace of the metric that defines what the rule monitors, such as 'microsoft.compute/virtualmachinescalesets' for 'Virtual Machine Scale Sets'. |
| `dimensions` | [block](#metric_trigger-block-structure) | No | - | One or more 'dimensions' block. |
| `divide_by_instance_count` | int | No | - | Whether to enable metric divide by instance count. |

### `profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `capacity` | [block](#profile-block-structure) | Yes | - | A 'capacity' block. |
| `rule` | [block](#profile-block-structure) | No | - | One or more (up to 10) 'rule' blocks. |
| `fixed_date` | [block](#profile-block-structure) | No | - | A 'fixed_date' block. This cannot be specified if a 'recurrence' block is specified. |
| `recurrence` | [block](#profile-block-structure) | No | - | A 'recurrence' block. This cannot be specified if a 'fixed_date' block is specified. |

### `capacity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default` | string | Yes | 0 | The number of instances that are available for scaling if metrics are not available for evaluation. The default is only used if the current instance count is lower than the default. Valid values are between '0' and '1000'. |
| `maximum` | string | Yes | - | The maximum number of instances for this resource. Valid values are between '0' and '1000'. |
| `minimum` | string | Yes | - | The minimum number of instances for this resource. Valid values are between '0' and '1000'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the AutoScale Setting. | 

Additionally, all variables are provided as outputs.
