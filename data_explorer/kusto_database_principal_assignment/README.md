# azurerm_kusto_database_principal_assignment

Manages a Kusto (also known as Azure Data Explorer) Database Principal Assignment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the kusto principal assignment. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **cluster_name** | string | True | -  |  -  | The name of the cluster in which to create the resource. Changing this forces a new resource to be created. | 
| **database_name** | string | True | -  |  -  | The name of the database in which to create the resource. Changing this forces a new resource to be created. | 
| **principal_id** | string | True | -  |  -  | The object id of the principal. Changing this forces a new resource to be created. | 
| **principal_type** | string | True | -  |  `App`, `Group`, `User`  | The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created. | 
| **role** | string | True | -  |  `Admin`, `Ingestor`, `Monitor`, `UnrestrictedViewer`, `User`, `Viewer`  | The database role assigned to the principal. Valid values include `Admin`, `Ingestor`, `Monitor`, `UnrestrictedViewer`, `User` and `Viewer`. Changing this forces a new resource to be created. | 
| **tenant_id** | string | True | -  |  -  | The tenant id in which the principal resides. Changing this forces a new resource to be created. | 

