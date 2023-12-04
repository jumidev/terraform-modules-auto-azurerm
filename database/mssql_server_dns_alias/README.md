# azurerm_mssql_server_dns_alias

Manages a MS SQL Server DNS Alias.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_server_dns_alias" 
}

inputs = {
   # mssql_server_id → set in tfstate_inputs
   name = "name of mssql_server_dns_alias" 
}

tfstate_inputs = {
   mssql_server_id = "path/to/mssql_server_component:id" 
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
| **mssql_server_id** | string |  The ID of the mssql server. Changing this forces a new MSSQL Server DNS Alias to be created. | 
| **name** | string |  The name which should be used for this MSSQL Server DNS Alias. Changing this forces a new MSSQL Server DNS Alias to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MSSQL Server DNS Alias. | 
| **dns_record** | string | No  | The fully qualified DNS record for alias. | 

Additionally, all variables are provided as outputs.
