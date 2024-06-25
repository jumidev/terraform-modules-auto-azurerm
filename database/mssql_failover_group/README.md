# azurerm_mssql_failover_group



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_failover_group"   
}
inputs = {
   name = "The name of the Failover Group"   
   # server_id → set in component_inputs
   partner_server = {
   }   
   read_write_endpoint_failover_policy = {
      mode = "..."      
   }   
}
component_inputs = {
   server_id = "path/to/mssql_server_component:id"   
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
| **name** | string |  The name of the Failover Group. Changing this forces a new resource to be created. | 
| **server_id** | string |  The ID of the primary SQL Server on which to create the failover group. Changing this forces a new resource to be created. | 
| **partner_server** | [block](#partner_server-block-structure) |  A `partner_server` block. | 
| **read_write_endpoint_failover_policy** | [block](#read_write_endpoint_failover_policy-block-structure) |  A `read_write_endpoint_failover_policy` block. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **databases** | string |  -  |  A set of database names to include in the failover group. | 
| **readonly_endpoint_failover_policy_enabled** | bool |  `False`  |  Whether failover is enabled for the readonly endpoint. Defaults to `false`. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `partner_server` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |

### `read_write_endpoint_failover_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | The failover policy of the read-write endpoint for the failover group. Possible values are 'Automatic' or 'Manual'. |
| `grace_minutes` | number | No | - | The grace period in minutes, before failover with data loss is attempted for the read-write endpoint. Required when 'mode' is 'Automatic'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **grace_minutes** | number | No  | The grace period in minutes, before failover with data loss is attempted for the read-write endpoint. Required when `mode` is `Automatic`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Failover Group. | 
| **partner_server** | block | No  | A `partner_server` block. | 
| **location** | string | No  | The location of the partner server. | 
| **role** | string | No  | The replication role of the partner server. Possible values include `Primary` or `Secondary`. ### Timeouts The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions: | 
| **create** | string | No  | (Defaults to 30 minutes) Used when creating the Failover Group. | 
| **update** | string | No  | (Defaults to 30 minutes) Used when updating the Failover Group. | 
| **read** | string | No  | (Defaults to 5 minutes) Used when retrieving the Failover Group. | 
| **delete** | string | No  | (Defaults to 30 minutes) Used when deleting the Failover Group. | 

Additionally, all variables are provided as outputs.
