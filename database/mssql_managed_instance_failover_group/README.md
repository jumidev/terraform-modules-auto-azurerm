# azurerm_mssql_managed_instance_failover_group

Manages an Azure SQL Managed Instance Failover Group.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Managed Instance Failover Group. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created. | 
| **var.managed_instance_id** | string | True | -  |  -  | The ID of the Azure SQL Managed Instance which will be replicated using a Managed Instance Failover Group. Changing this forces a new resource to be created. | 
| **var.partner_managed_instance_id** | string | True | -  |  -  | The ID of the Azure SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created. | 
| **var.read_write_endpoint_failover_policy** | block | True | -  |  -  | A `read_write_endpoint_failover_policy` block. | 
| **var.readonly_endpoint_failover_policy_enabled** | bool | False | `True`  |  -  | Failover policy for the read-only endpoint. Defaults to `true`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **managed_instance_id** | string  | - | 
| **partner_managed_instance_id** | string  | - | 
| **read_write_endpoint_failover_policy** | block  | - | 
| **readonly_endpoint_failover_policy_enabled** | bool  | - | 
| **id** | string  | The ID of the Managed Instance Failover Group. | 
| **partner_region** | block  | A `partner_region` block. | 
| **role** | string  | The partner replication role of the Managed Instance Failover Group. | 
| **location** | string  | The Azure Region where the Managed Instance Failover Group partner exists. | 