# azurerm_kusto_cluster_customer_managed_key

Manages a Customer Managed Key for a Kusto Cluster.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_explorer/kusto_cluster_customer_managed_key"   
}

inputs = {
   cluster_id = "The ID of the Kusto Cluster"   
   # key_vault_id → set in tfstate_inputs
   key_name = "The name of Key Vault Key"   
}

tfstate_inputs = {
   key_vault_id = "path/to/key_vault_component:id"   
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
| **cluster_id** | string |  The ID of the Kusto Cluster. Changing this forces a new resource to be created. | 
| **key_vault_id** | string |  The ID of the Key Vault. | 
| **key_name** | string |  The name of Key Vault Key. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **key_version** | string |  The version of Key Vault Key. | 
| **user_identity** | string |  The user assigned identity that has access to the Key Vault Key. If not specified, system assigned identity will be used. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Kusto Cluster. | 

Additionally, all variables are provided as outputs.
