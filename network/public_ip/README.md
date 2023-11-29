# azurerm_public_ip

Manages a Public IP Address.~> **Note** If this resource is to be associated with a resource that requires disassociation before destruction (such as `azurerm_network_interface`) it is recommended to set the `lifecycle` argument `create_before_destroy = true`. Otherwise, it can fail to disassociate on destruction.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Public IP. Changing this forces a new Public IP to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where this Public IP should exist. Changing this forces a new Public IP to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the Public IP should exist. Changing this forces a new resource to be created. | 
| **allocation_method** | string | True | -  |  `Static`, `Dynamic`  | Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic`. | 
| **zones** | string | False | -  |  -  | A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created. | 
| **ddos_protection_mode** | string | False | `VirtualNetworkInherited`  |  `Disabled`, `Enabled`, `VirtualNetworkInherited`  | The DDoS protection mode of the public IP. Possible values are `Disabled`, `Enabled`, and `VirtualNetworkInherited`. Defaults to `VirtualNetworkInherited`. | 
| **ddos_protection_plan_id** | string | False | -  |  -  | The ID of DDoS protection plan associated with the public IP. | 
| **domain_name_label** | string | False | -  |  -  | Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system. | 
| **edge_zone** | string | False | -  |  -  | Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created. | 
| **idle_timeout_in_minutes** | int | False | -  |  -  | Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. | 
| **ip_tags** | map | False | -  |  -  | A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created. | 
| **ip_version** | string | False | `IPv4`  |  -  | The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Defaults to `IPv4`. | 
| **public_ip_prefix_id** | string | False | -  |  -  | If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created. | 
| **reverse_fqdn** | string | False | -  |  -  | A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN. | 
| **sku** | string | False | `Basic`  |  -  | The SKU of the Public IP. Accepted values are `Basic` and `Standard`. Defaults to `Basic`. Changing this forces a new resource to be created. | 
| **sku_tier** | string | False | `Regional`  |  `Regional`, `Global`  | The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

