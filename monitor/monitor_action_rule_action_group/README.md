# azurerm_monitor_action_rule_action_group

Manages a Monitor Action Rule which type is action group.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_monitor_alert_processing_rule_action_group`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_alert_processing_rule_action_group) resource instead.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Monitor Action Rule. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the resource group in which the Monitor Action Rule should exist. Changing this forces a new resource to be created. | 
| **var.action_group_id** | string | True | -  |  Specifies the resource id of monitor action group. | 
| **var.description** | string | False | -  |  Specifies a description for the Action Rule. | 
| **var.enabled** | bool | False | `True`  |  Is the Action Rule enabled? Defaults to `true`. | 
| **var.scope** | block | False | -  |  A `scope` block. | 
| **var.condition** | block | False | -  |  A `condition` block. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **action_group_id** | string  | - | 
| **description** | string  | - | 
| **enabled** | bool  | - | 
| **scope** | block  | - | 
| **condition** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Monitor Action Rule. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_action_rule_action_group" 
}

inputs = {
   name = "name of monitor_action_rule_action_group" 
   resource_group_name = "${resource_group}" 
   action_group_id = "action_group_id of monitor_action_rule_action_group" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```