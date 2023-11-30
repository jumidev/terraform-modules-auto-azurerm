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
   profile = "profile of monitor_autoscale_setting" 
   target_resource_id = "target_resource_id of monitor_autoscale_setting" 
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
| **var.name** | string | True | -  |  The name of the AutoScale Setting. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group in the AutoScale Setting should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the AutoScale Setting should exist. Changing this forces a new resource to be created. | 
| **var.profile** | block | True | -  |  Specifies one or more (up to 20) `profile` blocks. | | `profile` block structure: || 
|   name (string): (REQUIRED) Specifies the name of the profile. ||
|   capacity (block): (REQUIRED) A 'capacity' block. ||
|   rule (block): One or more (up to 10) 'rule' blocks. ||
|   fixed_date (block): A 'fixed_date' block. This cannot be specified if a 'recurrence' block is specified. ||
|   recurrence (block): A 'recurrence' block. This cannot be specified if a 'fixed_date' block is specified. ||

| **var.target_resource_id** | string | True | -  |  Specifies the resource ID of the resource that the autoscale setting should be added to. Changing this forces a new resource to be created. | 
| **var.enabled** | bool | False | `True`  |  Specifies whether automatic scaling is enabled for the target resource. Defaults to `true`. | 
| **var.notification** | block | False | -  |  Specifies a `notification` block. | | `notification` block structure: || 
|   email (block): A 'email' block. ||
|   webhook (block): One or more 'webhook' blocks. ||

| **var.predictive** | block | False | -  |  A `predictive` block. | | `predictive` block structure: || 
|   scale_mode (string): (REQUIRED) Specifies the predictive scale mode. Possible values are 'Enabled' or 'ForecastOnly'. ||
|   look_ahead_time (string): Specifies the amount of time by which instances are launched in advance. It must be between 'PT1M' and 'PT1H' in ISO 8601 format. ||

| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the AutoScale Setting. | 

Additionally, all variables are provided as outputs.
