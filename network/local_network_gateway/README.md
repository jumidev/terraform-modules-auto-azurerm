# azurerm_local_network_gateway

Manages a local network gateway connection over which specific connections can be configured.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/local_network_gateway" 
}

inputs = {
   name = "name of local_network_gateway" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the local network gateway. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the local network gateway. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The location/region where the local network gateway is created. Changing this forces a new resource to be created. | 
| **var.address_space** | string | False | The list of string CIDRs representing the address spaces the gateway exposes. | 
| **var.bgp_settings** | block | False | A `bgp_settings` block containing the Local Network Gateway's BGP speaker settings. | 
| `bgp_settings` block structure: || 
|   asn (string): (REQUIRED) The BGP speaker's ASN. ||
|   bgp_peering_address (string): (REQUIRED) The BGP peering address and BGP identifier of this BGP speaker. ||
|   peer_weight (string): The weight added to routes learned from this BGP speaker. ||
| **var.gateway_address** | string | False | The gateway IP address to connect with. | 
| **var.gateway_fqdn** | string | False | The gateway FQDN to connect with. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Local Network Gateway. | 

Additionally, all variables are provided as outputs.
