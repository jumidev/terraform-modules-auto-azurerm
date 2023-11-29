# azurerm_kusto_cluster_principal_assignment

Manages a Kusto Cluster Principal Assignment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Kusto cluster principal assignment. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **cluster_name** | string | True | -  |  -  | The name of the cluster in which to create the resource. Changing this forces a new resource to be created. | 
| **principal_id** | string | True | -  |  -  | The object id of the principal. Changing this forces a new resource to be created. | 
| **principal_type** | string | True | -  |  `App`, `Group`, `User`  | The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created. | 
| **role** | string | True | -  |  `AllDatabasesAdmin`, `AllDatabasesViewer`  | The cluster role assigned to the principal. Valid values include `AllDatabasesAdmin` and `AllDatabasesViewer`. Changing this forces a new resource to be created. | 
| **tenant_id** | string | True | -  |  -  | The tenant id in which the principal resides. Changing this forces a new resource to be created. | 

