# azurerm_log_analytics_query_pack

Manages a Log Analytics Query Pack.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this Log Analytics Query Pack. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure Region where the Log Analytics Query Pack should exist. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Log Analytics Query Pack should exist. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Log Analytics Query Pack. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Analytics Query Pack. | 

Additionally, all variables are provided as outputs.
