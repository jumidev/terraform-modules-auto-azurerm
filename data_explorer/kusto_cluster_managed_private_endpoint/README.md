# azurerm_kusto_cluster_managed_private_endpoint

Manages a Managed Private Endpoint for a Kusto Cluster.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Managed Private Endpoints to create. Changing this forces a new resource to be created. | 
| **var.cluster_name** | string | True | The name of the Kusto Cluster. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created. | 
| **var.private_link_resource_id** | string | True | The ARM resource ID of the resource for which the managed private endpoint is created. Changing this forces a new resource to be created. | 
| **var.group_id** | string | True | The group id in which the managed private endpoint is created. Changing this forces a new resource to be created. | 
| **var.private_link_resource_region** | string | False | The region of the resource to which the managed private endpoint is created. Changing this forces a new resource to be created. | 
| **var.request_message** | string | False | The user request message. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cluster_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **private_link_resource_id** | string  | - | 
| **group_id** | string  | - | 
| **private_link_resource_region** | string  | - | 
| **request_message** | string  | - | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_explorer/kusto_cluster_managed_private_endpoint" 
}

inputs = {
   name = "name of kusto_cluster_managed_private_endpoint" 
   cluster_name = "cluster_name of kusto_cluster_managed_private_endpoint" 
   resource_group_name = "${resource_group}" 
   private_link_resource_id = "private_link_resource_id of kusto_cluster_managed_private_endpoint" 
   group_id = "group_id of kusto_cluster_managed_private_endpoint" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```