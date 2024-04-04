# azurerm_storage_account_network_rules



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_account_network_rules"   
}
inputs = {
   # storage_account_id → set in component_inputs
   default_action = "Specifies the default action of allow or deny when no other rules match..."   
}
component_inputs = {
   storage_account_id = "path/to/storage_account_component:id"   
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
| **storage_account_id** | string |  -  |  Specifies the ID of the storage account. Changing this forces a new resource to be created. | 
| **default_action** | string |  `Deny`, `Allow`  |  Specifies the default action of allow or deny when no other rules match. Valid options are `Deny` or `Allow`. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **bypass** | string |  `Logging`, `Metrics`, `AzureServices`, `None`  |  Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of `Logging`, `Metrics`, `AzureServices`, or `None`. -> **NOTE** User has to explicitly set `bypass` to empty slice (`[]`) to remove it. | 
| **ip_rules** | string |  -  |  List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. Private IP address ranges (as defined in [RFC 1918](https://tools.ietf.org/html/rfc1918#section-3)) are not allowed. -> **NOTE** Small address ranges using "/31" or "/32" prefix sizes are not supported. These ranges should be configured using individual IP address rules without prefix specified. -> **NOTE** IP network rules have no effect on requests originating from the same Azure region as the storage account. Use Virtual network rules to allow same-region requests. Services deployed in the same region as the storage account use private Azure IP addresses for communication. Thus, you cannot restrict access to specific Azure services based on their public outbound IP address range. -> **NOTE** User has to explicitly set `ip_rules` to empty slice (`[]`) to remove it. | 
| **virtual_network_subnet_ids** | list |  -  |  A list of virtual network subnet ids to secure the storage account. -> **NOTE** User has to explicitly set `virtual_network_subnet_ids` to empty slice (`[]`) to remove it. | 
| **private_link_accesss** | [block](#private_link_access-block-structure) |  -  |  One or more `private_link_access` block. | 

### `private_link_access` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `endpoint_resource_id` | string | Yes | - | The resource id of the resource access rule to be granted access. |
| `endpoint_tenant_id` | string | No | - | The tenant id of the resource of the resource access rule to be granted access. Defaults to the current tenant id. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **endpoint_tenant_id** | string | No  | The tenant id of the resource of the resource access rule to be granted access. Defaults to the current tenant id. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Storage Account. | 

Additionally, all variables are provided as outputs.
