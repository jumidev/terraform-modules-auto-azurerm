# azurerm_monitor_private_link_scoped_service

Manages an Azure Monitor Private Link Scoped Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Azure Monitor Private Link Scoped Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Azure Monitor Private Link Scoped Service should exist. Changing this forces a new resource to be created. | 
| **scope_name** | string | True | -  |  -  | The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created. | 
| **linked_resource_id** | string | True | -  |  -  | The ID of the linked resource. It must be the Log Analytics workspace or the Application Insights component or the Data Collection endpoint. Changing this forces a new resource to be created. | 

