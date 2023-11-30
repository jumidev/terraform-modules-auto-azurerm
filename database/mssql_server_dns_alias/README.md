# azurerm_mssql_server_dns_alias

Manages a MS SQL Server DNS Alias.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_server_dns_alias" 
}

inputs = {
   mssql_server_id = "mssql_server_id of mssql_server_dns_alias" 
   name = "name of mssql_server_dns_alias" 
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
| **var.mssql_server_id** | string | True | The ID of the mssql server. Changing this forces a new MSSQL Server DNS Alias to be created. | 
| **var.name** | string | True | The name which should be used for this MSSQL Server DNS Alias. Changing this forces a new MSSQL Server DNS Alias to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MSSQL Server DNS Alias. | 
| **dns_record** | string | No  | The fully qualified DNS record for alias. | 

Additionally, all variables are provided as outputs.
