# azurerm_kusto_database_principal_assignment

Manages a Kusto (also known as Azure Data Explorer) Database Principal Assignment.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the kusto principal assignment. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **var.cluster_name** | string | True | -  |  The name of the cluster in which to create the resource. Changing this forces a new resource to be created. | 
| **var.database_name** | string | True | -  |  The name of the database in which to create the resource. Changing this forces a new resource to be created. | 
| **var.principal_id** | string | True | -  |  The object id of the principal. Changing this forces a new resource to be created. | 
| **var.principal_type** | string | True | `App`, `Group`, `User`  |  The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created. | 
| **var.role** | string | True | `Admin`, `Ingestor`, `Monitor`, `UnrestrictedViewer`, `User`, `Viewer`  |  The database role assigned to the principal. Valid values include `Admin`, `Ingestor`, `Monitor`, `UnrestrictedViewer`, `User` and `Viewer`. Changing this forces a new resource to be created. | 
| **var.tenant_id** | string | True | -  |  The tenant id in which the principal resides. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **cluster_name** | string  | - | 
| **database_name** | string  | - | 
| **principal_id** | string  | - | 
| **principal_type** | string  | - | 
| **role** | string  | - | 
| **tenant_id** | string  | - | 
| **id** | string  | The ID of the Kusto Database Principal Assignment. | 
| **principal_name** | string  | The name of the principal. | 
| **tenant_name** | string  | The name of the tenant. | 