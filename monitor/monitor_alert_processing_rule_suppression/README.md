# azurerm_monitor_alert_processing_rule_suppression

Manages an Alert Processing Rule which suppress notifications.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_alert_processing_rule_suppression" 
}

inputs = {
   name = "name of monitor_alert_processing_rule_suppression" 
   resource_group_name = "${resource_group}" 
   scopes = "scopes of monitor_alert_processing_rule_suppression" 
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
| **var.name** | string | True | -  |  The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created. | 
| **var.scopes** | list | True | -  |  A list of resource IDs which will be the target of Alert Processing Rule. | 
| **var.condition** | block | False | -  |  A `condition` block. | 
| **var.description** | string | False | -  |  Specifies a description for the Alert Processing Rule. | 
| **var.enabled** | bool | False | `True`  |  Should the Alert Processing Rule be enabled? Defaults to `true`. | 
| **var.schedule** | block | False | -  |  A `schedule` block. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Alert Processing Rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Alert Processing Rule. | 

Additionally, all variables are provided as outputs.
