# azurerm_analysis_services_server

Manages an Analysis Services Server.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "analysis_services/analysis_services_server" 
}

inputs = {
   name = "name of analysis_services_server" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   sku = "sku of analysis_services_server" 
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
| **var.name** | string |  -  |  The name of the Analysis Services Server. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created. | 
| **var.location** | string |  -  |  The Azure location where the Analysis Services Server exists. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the Resource Group in which the Analysis Services Server should be exist. Changing this forces a new resource to be created. | 
| **var.sku** | string |  `D1`, `B1`, `B2`, `S0`, `S1`, `S2`, `S4`, `S8`, `S9`, `S8v2`, `S9v2`  |  SKU for the Analysis Services Server. Possible values are: `D1`, `B1`, `B2`, `S0`, `S1`, `S2`, `S4`, `S8`, `S9`, `S8v2` and `S9v2`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.admin_users** | string |  List of email addresses of admin users. | 
| **var.querypool_connection_mode** | string |  Controls how the read-write server is used in the query pool. If this value is set to `All` then read-write servers are also used for queries. Otherwise with `ReadOnly` these servers do not participate in query operations. | 
| **var.backup_blob_container_uri** | string |  URI and SAS token for a blob container to store backups. | 
| **var.enable_power_bi_service** | bool |  Indicates if the Power BI service is allowed to access or not. | 
| **var.ipv4_firewall_rule** | list |  One or more `ipv4_firewall_rule` block(s) as defined below. | 
| **var.tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Analysis Services Server. | 
| **server_full_name** | string | No  | The full name of the Analysis Services Server. | 

Additionally, all variables are provided as outputs.
