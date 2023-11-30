# azurerm_monitor_workspace

Manages an Azure Monitor Workspace.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_workspace" 
}

inputs = {
   name = "name of monitor_workspace" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
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
| **var.name** | string | True | -  |  Specifies the name which should be used for this Azure Monitor Workspace. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  Is public network access enabled? Defaults to `true`. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Azure Monitor Workspace. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Monitor Workspace. | 
| **query_endpoint** | string | No  | The query endpoint for the Azure Monitor Workspace. | 

Additionally, all variables are provided as outputs.
