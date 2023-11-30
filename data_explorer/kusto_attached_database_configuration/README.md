# azurerm_kusto_attached_database_configuration

Manages a Kusto (also known as Azure Data Explorer) Attached Database Configuration

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Kusto Attached Database Configuration to create. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the location of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  Specifies the resource group of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created. | 
| **var.cluster_name** | string | True | -  |  -  |  Specifies the name of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created. | 
| **var.cluster_resource_id** | string | True | -  |  -  |  The resource id of the cluster where the databases you would like to attach reside. Changing this forces a new resource to be created. | 
| **var.database_name** | string | True | -  |  -  |  The name of the database which you would like to attach, use * if you want to follow all current and future databases. Changing this forces a new resource to be created. | 
| **var.default_principal_modification_kind** | string | False | `None`  |  `None`, `Replace`, `Union`  |  The default principals modification kind. Valid values are: `None` (default), `Replace` and `Union`. Defaults to `None`. | 
| **var.sharing** | block | False | -  |  -  |  A `sharing` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **cluster_name** | string  | - | 
| **cluster_resource_id** | string  | - | 
| **database_name** | string  | - | 
| **default_principal_modification_kind** | string  | - | 
| **sharing** | block  | - | 
| **id** | string  | The Kusto Attached Database Configuration ID. | 
| **attached_database_names** | string  | The list of databases from the `cluster_resource_id` which are currently attached to the cluster. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_explorer/kusto_attached_database_configuration" 
}

inputs = {
   name = "name of kusto_attached_database_configuration" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   cluster_name = "cluster_name of kusto_attached_database_configuration" 
   cluster_resource_id = "cluster_resource_id of kusto_attached_database_configuration" 
   database_name = "database_name of kusto_attached_database_configuration" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```