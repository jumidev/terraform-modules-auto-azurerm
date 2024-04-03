# azurerm_virtual_network_dns_servers



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/virtual_network_dns_servers"   
}
inputs = {
   # virtual_network_id → set in component_inputs
}
component_inputs = {
   virtual_network_id = "path/to/virtual_network_component:id"   
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
| **virtual_network_id** | string |  The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **dns_servers** | string |  List of IP addresses of DNS servers | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **dns_servers** | string | No  | List of IP addresses of DNS servers In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The virtual network DNS server ID. | 

Additionally, all variables are provided as outputs.
