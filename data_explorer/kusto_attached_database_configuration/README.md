# azurerm_kusto_attached_database_configuration

Manages a Kusto (also known as Azure Data Explorer) Attached Database Configuration

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Kusto Attached Database Configuration to create. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the location of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the resource group of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created. | 
| **cluster_name** | string | True | -  |  -  | Specifies the name of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created. | 
| **cluster_resource_id** | string | True | -  |  -  | The resource id of the cluster where the databases you would like to attach reside. Changing this forces a new resource to be created. | 
| **database_name** | string | True | -  |  -  | The name of the database which you would like to attach, use * if you want to follow all current and future databases. Changing this forces a new resource to be created. | 
| **default_principal_modification_kind** | string | False | `None`  |  `None`, `Replace`, `Union`  | The default principals modification kind. Valid values are: `None` (default), `Replace` and `Union`. Defaults to `None`. | 
| **sharing** | block | False | -  |  -  | A `sharing` block. | 

