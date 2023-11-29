# azurerm_mssql_managed_instance_failover_group

Manages an Azure SQL Managed Instance Failover Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Managed Instance Failover Group. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created. | 
| **managed_instance_id** | string | True | -  |  -  | The ID of the Azure SQL Managed Instance which will be replicated using a Managed Instance Failover Group. Changing this forces a new resource to be created. | 
| **partner_managed_instance_id** | string | True | -  |  -  | The ID of the Azure SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created. | 
| **read_write_endpoint_failover_policy** | block | True | -  |  -  | A `read_write_endpoint_failover_policy` block. | 
| **readonly_endpoint_failover_policy_enabled** | bool | False | `True`  |  -  | Failover policy for the read-only endpoint. Defaults to `true`. | 

