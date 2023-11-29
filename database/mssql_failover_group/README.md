# azurerm_mssql_failover_group

Manages a Microsoft Azure SQL Failover Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Failover Group. Changing this forces a new resource to be created. | 
| **server_id** | string | True | -  |  -  | The ID of the primary SQL Server on which to create the failover group. Changing this forces a new resource to be created. | 
| **partner_server** | block | True | -  |  -  | A `partner_server` block. | 
| **databases** | string | False | -  |  -  | A set of database names to include in the failover group. | 
| **readonly_endpoint_failover_policy_enabled** | bool | False | `False`  |  -  | Whether failover is enabled for the readonly endpoint. Defaults to `false`. | 
| **read_write_endpoint_failover_policy** | block | True | -  |  -  | A `read_write_endpoint_failover_policy` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

