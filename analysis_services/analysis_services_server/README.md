# azurerm_analysis_services_server

Manages an Analysis Services Server.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Analysis Services Server. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure location where the Analysis Services Server exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the Analysis Services Server should be exist. Changing this forces a new resource to be created. | 
| **sku** | string | True | -  |  `D1`, `B1`, `B2`, `S0`, `S1`, `S2`, `S4`, `S8`, `S9`, `S8v2`, `S9v2`  | SKU for the Analysis Services Server. Possible values are: `D1`, `B1`, `B2`, `S0`, `S1`, `S2`, `S4`, `S8`, `S9`, `S8v2` and `S9v2`. | 
| **admin_users** | string | False | -  |  -  | List of email addresses of admin users. | 
| **querypool_connection_mode** | string | False | -  |  -  | Controls how the read-write server is used in the query pool. If this value is set to `All` then read-write servers are also used for queries. Otherwise with `ReadOnly` these servers do not participate in query operations. | 
| **backup_blob_container_uri** | string | False | -  |  -  | URI and SAS token for a blob container to store backups. | 
| **enable_power_bi_service** | bool | False | -  |  -  | Indicates if the Power BI service is allowed to access or not. | 
| **ipv4_firewall_rule** | list | False | -  |  -  | One or more `ipv4_firewall_rule` block(s) as defined below. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

