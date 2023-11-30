# azurerm_kusto_cluster_principal_assignment

Manages a Kusto Cluster Principal Assignment.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_explorer/kusto_cluster_principal_assignment" 
}

inputs = {
   name = "name of kusto_cluster_principal_assignment" 
   resource_group_name = "${resource_group}" 
   cluster_name = "cluster_name of kusto_cluster_principal_assignment" 
   principal_id = "principal_id of kusto_cluster_principal_assignment" 
   principal_type = "principal_type of kusto_cluster_principal_assignment" 
   role = "role of kusto_cluster_principal_assignment" 
   tenant_id = "tenant_id of kusto_cluster_principal_assignment" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string |  -  |  The name of the Kusto cluster principal assignment. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **var.cluster_name** | string |  -  |  The name of the cluster in which to create the resource. Changing this forces a new resource to be created. | 
| **var.principal_id** | string |  -  |  The object id of the principal. Changing this forces a new resource to be created. | 
| **var.principal_type** | string |  `App`, `Group`, `User`  |  The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created. | 
| **var.role** | string |  `AllDatabasesAdmin`, `AllDatabasesViewer`  |  The cluster role assigned to the principal. Valid values include `AllDatabasesAdmin` and `AllDatabasesViewer`. Changing this forces a new resource to be created. | 
| **var.tenant_id** | string |  -  |  The tenant id in which the principal resides. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Kusto Cluster Principal Assignment. | 
| **principal_name** | string | No  | The name of the principal. | 
| **tenant_name** | string | No  | The name of the tenant. | 

Additionally, all variables are provided as outputs.
