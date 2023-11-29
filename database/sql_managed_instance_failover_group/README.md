# azurerm_sql_managed_instance_failover_group

Manages a SQL Instance Failover Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this SQL Instance Failover Group. Changing this forces a new SQL Instance Failover Group to be created. | 
| **managed_instance_name** | string | True | -  |  -  | The name of the SQL Managed Instance which will be replicated using a SQL Instance Failover Group. Changing this forces a new SQL Instance Failover Group to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the SQL Instance Failover Group exists. Changing this forces a new resource to be created. | 
| **partner_managed_instance_id** | string | True | -  |  -  | ID of the SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created. | 
| **read_write_endpoint_failover_policy** | block | True | -  |  -  | A `read_write_endpoint_failover_policy` block. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the SQL Instance Failover Group should exist. Changing this forces a new SQL Instance Failover Group to be created. | 
| **readonly_endpoint_failover_policy_enabled** | bool | False | `True`  |  -  | Failover policy for the read-only endpoint. Defaults to `true`. | 

