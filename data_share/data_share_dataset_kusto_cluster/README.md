# azurerm_data_share_dataset_kusto_cluster

Manages a Data Share Kusto Cluster Dataset.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_share/data_share_dataset_kusto_cluster"   
}

inputs = {
   name = "The name which should be used for this Data Share Kusto Cluster Dataset..."   
   share_id = "The resource ID of the Data Share where this Data Share Kusto Cluster Dataset sh..."   
   # kusto_cluster_id → set in component_inputs
}

component_inputs = {
   kusto_cluster_id = "path/to/kusto_cluster_component:id"   
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
| **name** | string |  The name which should be used for this Data Share Kusto Cluster Dataset. Changing this forces a new Data Share Kusto Cluster Dataset to be created. | 
| **share_id** | string |  The resource ID of the Data Share where this Data Share Kusto Cluster Dataset should be created. Changing this forces a new Data Share Kusto Cluster Dataset to be created. | 
| **kusto_cluster_id** | string |  The resource ID of the Kusto Cluster to be shared with the receiver. Changing this forces a new Data Share Kusto Cluster Dataset to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The resource ID of the Data Share Kusto Cluster Dataset. | 
| **display_name** | string | No  | The name of the Data Share Dataset. | 
| **kusto_cluster_location** | string | No  | The location of the Kusto Cluster. | 

Additionally, all variables are provided as outputs.
