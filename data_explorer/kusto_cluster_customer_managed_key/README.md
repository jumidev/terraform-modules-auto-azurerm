# azurerm_kusto_cluster_customer_managed_key

Manages a Customer Managed Key for a Kusto Cluster.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_explorer/kusto_cluster_customer_managed_key" 
}

inputs = {
   cluster_id = "cluster_id of kusto_cluster_customer_managed_key" 
   key_vault_id = "key_vault_id of kusto_cluster_customer_managed_key" 
   key_name = "key_name of kusto_cluster_customer_managed_key" 
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
| **var.cluster_id** | string | True | The ID of the Kusto Cluster. Changing this forces a new resource to be created. | 
| **var.key_vault_id** | string | True | The ID of the Key Vault. | 
| **var.key_name** | string | True | The name of Key Vault Key. | 
| **var.key_version** | string | False | The version of Key Vault Key. | 
| **var.user_identity** | string | False | The user assigned identity that has access to the Key Vault Key. If not specified, system assigned identity will be used. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Kusto Cluster. | 

Additionally, all variables are provided as outputs.
