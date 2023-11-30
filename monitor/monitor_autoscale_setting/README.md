# azurerm_monitor_autoscale_setting

Manages a AutoScale Setting which can be applied to Virtual Machine Scale Sets, App Services and other scalable resources.

## Example minimal component.hclt

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
| **var.name** | string |  The name of the AutoScale Setting. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group in the AutoScale Setting should be created. Changing this forces a new resource to be created. | 
| **var.location** | string |  Specifies the supported Azure location where the AutoScale Setting should exist. Changing this forces a new resource to be created. | 
| **var.profile** | block |  Specifies one or more (up to 20) `profile` blocks. | 
| **var.target_resource_id** | string |  Specifies the resource ID of the resource that the autoscale setting should be added to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.enabled** | bool |  `True`  |  Specifies whether automatic scaling is enabled for the target resource. Defaults to `true`. | 
| **var.notification** | block |  -  |  Specifies a `notification` block. | 
| **var.predictive** | block |  -  |  A `predictive` block. | 
| **var.tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `capacity` | block | Yes | - | A 'capacity' block. |
| `rule` | block | No | - | One or more (up to 10) 'rule' blocks. |
| `fixed_date` | block | No | - | A 'fixed_date' block. This cannot be specified if a 'recurrence' block is specified. |
| `recurrence` | block | No | - | A 'recurrence' block. This cannot be specified if a 'fixed_date' block is specified. |

### `notification` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email` | block | No | - | A 'email' block. |
| `webhook` | block | No | - | One or more 'webhook' blocks. |

### `predictive` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `scale_mode` | string | Yes | - | Specifies the predictive scale mode. Possible values are 'Enabled' or 'ForecastOnly'. |
| `look_ahead_time` | string | No | - | Specifies the amount of time by which instances are launched in advance. It must be between 'PT1M' and 'PT1H' in ISO 8601 format. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the AutoScale Setting. | 

Additionally, all variables are provided as outputs.
