# azurerm_monitor_action_rule_suppression

Manages a Monitor Action Rule which type is suppression.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_monitor_alert_processing_rule_suppression`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_alert_processing_rule_suppression) resource instead.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Monitor Action Rule. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the resource group in which the Monitor Action Rule should exist. Changing this forces a new resource to be created. | 
| **suppression** | block | True | -  |  -  | A `suppression` block. | 
| **description** | string | False | -  |  -  | Specifies a description for the Action Rule. | 
| **enabled** | bool | False | `True`  |  -  | Is the Action Rule enabled? Defaults to `true`. | 
| **scope** | block | False | -  |  -  | A `scope` block. | 
| **condition** | block | False | -  |  -  | A `condition` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

