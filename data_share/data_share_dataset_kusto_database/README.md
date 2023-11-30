# azurerm_data_share_dataset_kusto_database

Manages a Data Share Kusto Database Dataset.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_share/data_share_dataset_kusto_database" 
}

inputs = {
   name = "name of data_share_dataset_kusto_database" 
   share_id = "share_id of data_share_dataset_kusto_database" 
   kusto_database_id = "kusto_database_id of data_share_dataset_kusto_database" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Data Share Kusto Database Dataset. Changing this forces a new Data Share Kusto Database Dataset to be created. | 
| **var.share_id** | string | True | The resource ID of the Data Share where this Data Share Kusto Database Dataset should be created. Changing this forces a new Data Share Kusto Database Dataset to be created. | 
| **var.kusto_database_id** | string | True | The resource ID of the Kusto Cluster Database to be shared with the receiver. Changing this forces a new Data Share Kusto Database Dataset to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The resource ID of the Data Share Kusto Database Dataset. | 
| **display_name** | string | No  | The name of the Data Share Dataset. | 
| **kusto_cluster_location** | string | No  | The location of the Kusto Cluster. | 

Additionally, all variables are provided as outputs.
