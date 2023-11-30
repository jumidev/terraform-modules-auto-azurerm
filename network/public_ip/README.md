# azurerm_public_ip

Manages a Public IP Address.~> **Note** If this resource is to be associated with a resource that requires disassociation before destruction (such as `azurerm_network_interface`) it is recommended to set the `lifecycle` argument `create_before_destroy = true`. Otherwise, it can fail to disassociate on destruction.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/public_ip" 
}

inputs = {
   name = "name of public_ip" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   allocation_method = "allocation_method of public_ip" 
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
| **var.name** | string |  -  |  Specifies the name of the Public IP. Changing this forces a new Public IP to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the Resource Group where this Public IP should exist. Changing this forces a new Public IP to be created. | 
| **var.location** | string |  -  |  Specifies the supported Azure location where the Public IP should exist. Changing this forces a new resource to be created. | 
| **var.allocation_method** | string |  `Static`, `Dynamic`  |  Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.zones** | string |  -  |  -  |  A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created. | 
| **var.ddos_protection_mode** | string |  `VirtualNetworkInherited`  |  `Disabled`, `Enabled`, `VirtualNetworkInherited`  |  The DDoS protection mode of the public IP. Possible values are `Disabled`, `Enabled`, and `VirtualNetworkInherited`. Defaults to `VirtualNetworkInherited`. | 
| **var.ddos_protection_plan_id** | string |  -  |  -  |  The ID of DDoS protection plan associated with the public IP. | 
| **var.domain_name_label** | string |  -  |  -  |  Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system. | 
| **var.edge_zone** | string |  -  |  -  |  Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created. | 
| **var.idle_timeout_in_minutes** | int |  -  |  -  |  Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. | 
| **var.ip_tags** | map |  -  |  -  |  A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created. | 
| **var.ip_version** | string |  `IPv4`  |  -  |  The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Defaults to `IPv4`. | 
| **var.public_ip_prefix_id** | string |  -  |  -  |  If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created. | 
| **var.reverse_fqdn** | string |  -  |  -  |  A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN. | 
| **var.sku** | string |  `Basic`  |  -  |  The SKU of the Public IP. Accepted values are `Basic` and `Standard`. Defaults to `Basic`. Changing this forces a new resource to be created. | 
| **var.sku_tier** | string |  `Regional`  |  `Regional`, `Global`  |  The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of this Public IP. | 
| **ip_address** | string | No  | The IP address value that was allocated. | 
| **fqdn** | string | No  | Fully qualified domain name of the A DNS record associated with the public IP. `domain_name_label` must be specified to get the `fqdn`. This is the concatenation of the `domain_name_label` and the regionalized DNS zone | 

Additionally, all variables are provided as outputs.
