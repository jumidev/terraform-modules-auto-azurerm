# azurerm_kusto_cluster_managed_private_endpoint

Manages a Managed Private Endpoint for a Kusto Cluster.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the Managed Private Endpoints to create. Changing this forces a new resource to be created. | 
| **cluster_name** | string |  The name of the Kusto Cluster. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created. | 
| **private_link_resource_id** | string |  The ARM resource ID of the resource for which the managed private endpoint is created. Changing this forces a new resource to be created. | 
| **group_id** | string |  The group id in which the managed private endpoint is created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **private_link_resource_region** | string |  The region of the resource to which the managed private endpoint is created. Changing this forces a new resource to be created. | 
| **request_message** | string |  The user request message. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
