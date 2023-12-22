# azurerm_public_ip

Manages a Public IP Address.~> **Note** If this resource is to be associated with a resource that requires disassociation before destruction (such as `azurerm_network_interface`) it is recommended to set the `lifecycle` argument `create_before_destroy = true`. Otherwise, it can fail to disassociate on destruction.

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
| `zone_name` | string | True | null |
| `ttl` | number | True | 300 |
| `target_resource_id` | string | False | null |
| `tags` | map | False | null |


Example component snippet:

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

- If set to a valid `azurerm_nat_gateway` `id`, makes a **azurerm_nat_gateway_public_ip_association** - Manages the association between a NAT Gateway and a Public IP.

Example component snippet:

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


Example component snippet:

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
| **allocation_method** | string |  `Static`, `Dynamic`  |  Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **zones** | string |  -  |  -  |  A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created. | 
| **ddos_protection_mode** | string |  `VirtualNetworkInherited`  |  `Disabled`, `Enabled`, `VirtualNetworkInherited`  |  The DDoS protection mode of the public IP. Possible values are `Disabled`, `Enabled`, and `VirtualNetworkInherited`. Defaults to `VirtualNetworkInherited`. | 
| **ddos_protection_plan_id** | string |  -  |  -  |  The ID of DDoS protection plan associated with the public IP. | 
| **domain_name_label** | string |  -  |  -  |  Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system. | 
| **edge_zone** | string |  -  |  -  |  Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created. | 
| **idle_timeout_in_minutes** | number |  -  |  -  |  Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. | 
| **ip_tags** | map |  -  |  -  |  A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created. | 
| **ip_version** | string |  `IPv4`  |  -  |  The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Defaults to `IPv4`. | 
| **public_ip_prefix_id** | string |  -  |  -  |  If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created. | 
| **reverse_fqdn** | string |  -  |  -  |  A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN. | 
| **sku** | string |  `Basic`  |  -  |  The SKU of the Public IP. Accepted values are `Basic` and `Standard`. Defaults to `Basic`. Changing this forces a new resource to be created. | 
| **sku_tier** | string |  `Regional`  |  `Regional`, `Global`  |  The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of this Public IP. | 
| **ip_address** | string | No  | The IP address value that was allocated. | 
| **fqdn** | string | No  | Fully qualified domain name of the A DNS record associated with the public IP. `domain_name_label` must be specified to get the `fqdn`. This is the concatenation of the `domain_name_label` and the regionalized DNS zone | 

Additionally, all variables are provided as outputs.
