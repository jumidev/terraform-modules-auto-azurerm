# azurerm_sql_managed_instance_failover_group

Manages a SQL Instance Failover Group.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this SQL Instance Failover Group. Changing this forces a new SQL Instance Failover Group to be created. | 
| **var.managed_instance_name** | string | True | -  |  -  | The name of the SQL Managed Instance which will be replicated using a SQL Instance Failover Group. Changing this forces a new SQL Instance Failover Group to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the SQL Instance Failover Group exists. Changing this forces a new resource to be created. | 
| **var.partner_managed_instance_id** | string | True | -  |  -  | ID of the SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created. | 
| **var.read_write_endpoint_failover_policy** | block | True | -  |  -  | A `read_write_endpoint_failover_policy` block. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the SQL Instance Failover Group should exist. Changing this forces a new SQL Instance Failover Group to be created. | 
| **var.readonly_endpoint_failover_policy_enabled** | bool | False | `True`  |  -  | Failover policy for the read-only endpoint. Defaults to `true`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **managed_instance_name** | string  | - | 
| **location** | string  | - | 
| **partner_managed_instance_id** | string  | - | 
| **read_write_endpoint_failover_policy** | block  | - | 
| **resource_group_name** | string  | - | 
| **readonly_endpoint_failover_policy_enabled** | bool  | - | 
| **id** | string  | The ID of the SQL Instance Failover Group. | 
| **partner_region** | block  | A `partner_region` block. | 
| **role** | string  | The partner replication role of the SQL Instance Failover Group. | 
| **location** | string  | The Azure Region where the SQL Instance Failover Group partner exists. | 