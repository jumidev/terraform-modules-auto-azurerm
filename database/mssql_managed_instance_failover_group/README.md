# azurerm_mssql_managed_instance_failover_group

Manages an Azure SQL Managed Instance Failover Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_managed_instance_failover_group" 
}

inputs = {
   name = "name of mssql_managed_instance_failover_group" 
   location = "${location}" 
   managed_instance_id = "managed_instance_id of mssql_managed_instance_failover_group" 
   partner_managed_instance_id = "partner_managed_instance_id of mssql_managed_instance_failover_group" 
   read_write_endpoint_failover_policy = {
      example_read_write_endpoint_failover_policy = {
         mode = "..."   
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Managed Instance Failover Group. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created. | 
| **var.managed_instance_id** | string | True | -  |  The ID of the Azure SQL Managed Instance which will be replicated using a Managed Instance Failover Group. Changing this forces a new resource to be created. | 
| **var.partner_managed_instance_id** | string | True | -  |  The ID of the Azure SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created. | 
| **var.read_write_endpoint_failover_policy** | block | True | -  |  A `read_write_endpoint_failover_policy` block. | 
| **var.readonly_endpoint_failover_policy_enabled** | bool | False | `True`  |  Failover policy for the read-only endpoint. Defaults to `true`. | 

### `read_write_endpoint_failover_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | The failover mode. Possible values are 'Automatic' or 'Manual'. |
| `grace_minutes` | int | No | - | Applies only if 'mode' is 'Automatic'. The grace period in minutes before failover with data loss is attempted. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Managed Instance Failover Group. | 
| **partner_region** | block | No  | A `partner_region` block. | 
| **role** | string | No  | The partner replication role of the Managed Instance Failover Group. | 
| **location** | string | No  | The Azure Region where the Managed Instance Failover Group partner exists. | 

Additionally, all variables are provided as outputs.
