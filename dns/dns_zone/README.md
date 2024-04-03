# azurerm_dns_zone



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "dns/dns_zone"   
}
inputs = {
   name = "The name of the DNS Zone"   
   resource_group_name = "${resource_group}"   
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
| **name** | string |  The name of the DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **soa_record** | [block](#soa_record-block-structure) |  An `soa_record` block. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `soa_record` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email` | string | Yes | - | The email contact for the SOA record. |
| `host_name` | string | No | - | The domain name of the authoritative name server for the SOA record. If not set, computed value from Azure will be used. |
| `expire_time` | string | No | 2419200 | The expire time for the SOA record. Defaults to '2419200'. |
| `minimum_ttl` | string | No | 300 | The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to '300'. |
| `refresh_time` | string | No | 3600 | The refresh time for the SOA record. Defaults to '3600'. |
| `retry_time` | string | No | 300 | The retry time for the SOA record. Defaults to '300'. |
| `serial_number` | string | No | 1 | The serial number for the SOA record. Defaults to '1'. |
| `ttl` | number | No | 3600 | The Time To Live of the SOA Record in seconds. Defaults to '3600'. |
| `tags` | map | No | - | A mapping of tags to assign to the Record Set. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags to assign to the Record Set. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The DNS Zone ID. | 
| **max_number_of_record_sets** | number | No  | Maximum number of Records in the zone. Defaults to `1000`. | 
| **number_of_record_sets** | number | No  | The number of records already in the zone. | 
| **name_servers** | list | No  | A list of values that make up the NS record for the zone. | 

Additionally, all variables are provided as outputs.
