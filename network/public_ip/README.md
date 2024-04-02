# azurerm_public_ip



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/public_ip"   
}

inputs = {
   name = "Specifies the name of the Public IP"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   allocation_method = "Defines the allocation method for this IP address"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resources


### `dns_a_record` 

If set, makes a **azurerm_dns_a_record** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `name` | string | True | null |
| `resource_group_name` | string | True | null |
| `zone_name` | string | True | null |
| `ttl` | number | True | 300 |
| `target_resource_id` | string | False | null |
| `tags` | map | False | null |


Example component snippet (**See also** [dns/dns_a_record](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/dns/dns_a_record))

```hcl
inputs = {
   dns_a_record = {
      name = "..."      
      resource_group_name = "${resource_group}"      
      ttl = 300      
      tags = "..."      
   }
   
}

component_inputs = {
   dns_a_record.zone_name = "path/to/dns_zone_component:name"   
}

```

### `nat_gateway_id` 

- If set to a valid `azurerm_nat_gateway` `id`, makes a **azurerm_nat_gateway_public_ip_association** - 

Example component snippet (**See also** [network/nat_gateway](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/network/nat_gateway))

```hcl
component_inputs = {
   nat_gateway_id = "path/to/nat_gateway_component:id"
}
```

### `private_dns_a_record` 

If set, makes a **azurerm_private_dns_a_record** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `name` | string | True | null |
| `resource_group_name` | string | True | null |
| `zone_name` | string | True | null |
| `ttl` | number | True | 300 |
| `tags` | map | False | null |


Example component snippet (**See also** [private_dns/private_dns_a_record](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/private_dns/private_dns_a_record))

```hcl
inputs = {
   private_dns_a_record = {
      name = "..."      
      resource_group_name = "${resource_group}"      
      ttl = 300      
      tags = "..."      
   }
   
}

component_inputs = {
   private_dns_a_record.zone_name = "path/to/private_dns_zone_component:name"   
}

```


## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Public IP. Changing this forces a new Public IP to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where this Public IP should exist. Changing this forces a new Public IP to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the Public IP should exist. Changing this forces a new resource to be created. | 
| **allocation_method** | string |  `Static`, `Dynamic`  |  Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic`. ~> **Note** `Dynamic` Public IP Addresses aren't allocated until they're assigned to a resource (such as a Virtual Machine or a Load Balancer) by design within Azure. See `ip_address` argument. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **zones** | string |  -  |  -  |  A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created. -> **Note:** Availability Zones are only supported with a [Standard SKU](https://docs.microsoft.com/azure/virtual-network/virtual-network-ip-addresses-overview-arm#standard) and [in select regions](https://docs.microsoft.com/azure/availability-zones/az-overview) at this time. Standard SKU Public IP Addresses that do not specify a zone are **not** zone-redundant by default. | 
| **ddos_protection_mode** | string |  `VirtualNetworkInherited`  |  `Disabled`, `Enabled`, `VirtualNetworkInherited`  |  The DDoS protection mode of the public IP. Possible values are `Disabled`, `Enabled`, and `VirtualNetworkInherited`. Defaults to `VirtualNetworkInherited`. | 
| **ddos_protection_plan_id** | string |  -  |  -  |  The ID of DDoS protection plan associated with the public IP. -> **Note:** `ddos_protection_plan_id` can only be set when `ddos_protection_mode` is `Enabled`. | 
| **domain_name_label** | string |  -  |  -  |  Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system. | 
| **edge_zone** | string |  -  |  -  |  Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created. | 
| **idle_timeout_in_minutes** | number |  -  |  -  |  Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. | 
| **ip_tags** | map |  -  |  -  |  A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created. -> **Note** IP Tag `RoutingPreference` requires multiple `zones` and `Standard` SKU to be set. | 
| **ip_version** | string |  `IPv4`  |  -  |  The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Defaults to `IPv4`. -> **Note** Only `static` IP address allocation is supported for IPv6. | 
| **public_ip_prefix_id** | string |  -  |  -  |  If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created. | 
| **reverse_fqdn** | string |  -  |  -  |  A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN. | 
| **sku** | string |  `Basic`  |  -  |  The SKU of the Public IP. Accepted values are `Basic` and `Standard`. Defaults to `Basic`. Changing this forces a new resource to be created. -> **Note** Public IP Standard SKUs require `allocation_method` to be set to `Static`. | 
| **sku_tier** | string |  `Regional`  |  `Regional`, `Global`  |  The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created. -> **Note** When `sku_tier` is set to `Global`, `sku` must be set to `Standard`. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of this Public IP. | 
| **ip_address** | string | No  | The IP address value that was allocated. ~> **Note** `Dynamic` Public IP Addresses aren't allocated until they're attached to a device (e.g. a Virtual Machine/Load Balancer). Instead you can obtain the IP Address once the Public IP has been assigned via the [`azurerm_public_ip` Data Source](../d/public_ip.html). | 
| **fqdn** | string | No  | Fully qualified domain name of the A DNS record associated with the public IP. `domain_name_label` must be specified to get the `fqdn`. This is the concatenation of the `domain_name_label` and the regionalized DNS zone | 

Additionally, all variables are provided as outputs.
