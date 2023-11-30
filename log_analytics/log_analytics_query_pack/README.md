# azurerm_log_analytics_query_pack

Manages a Log Analytics Query Pack.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "log_analytics/log_analytics_query_pack" 
}

inputs = {
   name = "name of log_analytics_query_pack" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Log Analytics Query Pack. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region where the Log Analytics Query Pack should exist. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Log Analytics Query Pack should exist. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Log Analytics Query Pack. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Analytics Query Pack. | 

Additionally, all variables are provided as outputs.
