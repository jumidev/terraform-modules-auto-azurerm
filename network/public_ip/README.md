# azurerm_public_ip

Manages a Public IP Address.~> **Note** If this resource is to be associated with a resource that requires disassociation before destruction (such as `azurerm_network_interface`) it is recommended to set the `lifecycle` argument `create_before_destroy = true`. Otherwise, it can fail to disassociate on destruction.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Public IP. Changing this forces a new Public IP to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where this Public IP should exist. Changing this forces a new Public IP to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the Public IP should exist. Changing this forces a new resource to be created. | 
| **var.allocation_method** | string | True | -  |  `Static`, `Dynamic`  | Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic`. | 
| **var.zones** | string | False | -  |  -  | A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created. | 
| **var.ddos_protection_mode** | string | False | `VirtualNetworkInherited`  |  `Disabled`, `Enabled`, `VirtualNetworkInherited`  | The DDoS protection mode of the public IP. Possible values are `Disabled`, `Enabled`, and `VirtualNetworkInherited`. Defaults to `VirtualNetworkInherited`. | 
| **var.ddos_protection_plan_id** | string | False | -  |  -  | The ID of DDoS protection plan associated with the public IP. | 
| **var.domain_name_label** | string | False | -  |  -  | Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system. | 
| **var.edge_zone** | string | False | -  |  -  | Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created. | 
| **var.idle_timeout_in_minutes** | int | False | -  |  -  | Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. | 
| **var.ip_tags** | map | False | -  |  -  | A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created. | 
| **var.ip_version** | string | False | `IPv4`  |  -  | The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Defaults to `IPv4`. | 
| **var.public_ip_prefix_id** | string | False | -  |  -  | If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created. | 
| **var.reverse_fqdn** | string | False | -  |  -  | A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN. | 
| **var.sku** | string | False | `Basic`  |  -  | The SKU of the Public IP. Accepted values are `Basic` and `Standard`. Defaults to `Basic`. Changing this forces a new resource to be created. | 
| **var.sku_tier** | string | False | `Regional`  |  `Regional`, `Global`  | The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **allocation_method** | string  | - | 
| **zones** | string  | - | 
| **ddos_protection_mode** | string  | - | 
| **ddos_protection_plan_id** | string  | - | 
| **domain_name_label** | string  | - | 
| **edge_zone** | string  | - | 
| **idle_timeout_in_minutes** | int  | - | 
| **ip_tags** | map  | - | 
| **ip_version** | string  | - | 
| **public_ip_prefix_id** | string  | - | 
| **reverse_fqdn** | string  | - | 
| **sku** | string  | - | 
| **sku_tier** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of this Public IP. | 
| **ip_address** | string  | The IP address value that was allocated. | 
| **fqdn** | string  | Fully qualified domain name of the A DNS record associated with the public IP. `domain_name_label` must be specified to get the `fqdn`. This is the concatenation of the `domain_name_label` and the regionalized DNS zone | 