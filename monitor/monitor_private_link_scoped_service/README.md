# azurerm_monitor_private_link_scoped_service

Manages an Azure Monitor Private Link Scoped Service.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Azure Monitor Private Link Scoped Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Azure Monitor Private Link Scoped Service should exist. Changing this forces a new resource to be created. | 
| **var.scope_name** | string | True | The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created. | 
| **var.linked_resource_id** | string | True | The ID of the linked resource. It must be the Log Analytics workspace or the Application Insights component or the Data Collection endpoint. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **scope_name** | string  | - | 
| **linked_resource_id** | string  | - | 
| **id** | string  | The ID of the Azure Monitor Private Link Scoped Service. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_private_link_scoped_service" 
}

inputs = {
   name = "name of monitor_private_link_scoped_service" 
   resource_group_name = "${resource_group}" 
   scope_name = "scope_name of monitor_private_link_scoped_service" 
   linked_resource_id = "linked_resource_id of monitor_private_link_scoped_service" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```