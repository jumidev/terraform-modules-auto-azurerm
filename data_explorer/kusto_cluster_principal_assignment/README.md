# azurerm_kusto_cluster_principal_assignment

Manages a Kusto Cluster Principal Assignment.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Kusto cluster principal assignment. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **var.cluster_name** | string | True | -  |  -  | The name of the cluster in which to create the resource. Changing this forces a new resource to be created. | 
| **var.principal_id** | string | True | -  |  -  | The object id of the principal. Changing this forces a new resource to be created. | 
| **var.principal_type** | string | True | -  |  `App`, `Group`, `User`  | The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created. | 
| **var.role** | string | True | -  |  `AllDatabasesAdmin`, `AllDatabasesViewer`  | The cluster role assigned to the principal. Valid values include `AllDatabasesAdmin` and `AllDatabasesViewer`. Changing this forces a new resource to be created. | 
| **var.tenant_id** | string | True | -  |  -  | The tenant id in which the principal resides. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **cluster_name** | string  | - | 
| **principal_id** | string  | - | 
| **principal_type** | string  | - | 
| **role** | string  | - | 
| **tenant_id** | string  | - | 
| **id** | string  | The ID of the Kusto Cluster Principal Assignment. | 
| **principal_name** | string  | The name of the principal. | 
| **tenant_name** | string  | The name of the tenant. | 