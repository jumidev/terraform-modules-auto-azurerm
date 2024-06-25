# azurerm_firewall



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/firewall"   
}
inputs = {
   name = "Specifies the name of the Firewall"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku_name = "SKU name of the Firewall"   
   sku_tier = "SKU tier of the Firewall"   
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
| **name** | string |  -  |  Specifies the name of the Firewall. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku_name** | string |  `AZFW_Hub`, `AZFW_VNet`  |  SKU name of the Firewall. Possible values are `AZFW_Hub` and `AZFW_VNet`. Changing this forces a new resource to be created. | 
| **sku_tier** | string |  `Premium`, `Standard`, `Basic`  |  SKU tier of the Firewall. Possible values are `Premium`, `Standard` and `Basic`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **firewall_policy_id** | string |  -  |  -  |  The ID of the Firewall Policy applied to this Firewall. | 
| **ip_configuration** | [block](#ip_configuration-block-structure) |  -  |  -  |  An `ip_configuration` block. | 
| **dns_servers** | list |  -  |  -  |  A list of DNS servers that the Azure Firewall will direct DNS traffic to the for name resolution. | 
| **dns_proxy_enabled** | bool |  -  |  -  |  Whether DNS proxy is enabled. It will forward DNS requests to the DNS servers when set to `true`. It will be set to `true` if `dns_servers` provided with a not empty list. | 
| **private_ip_ranges** | list |  -  |  -  |  A list of SNAT private CIDR IP ranges, or the special string `IANAPrivateRanges`, which indicates Azure Firewall does not SNAT when the destination IP address is a private range per IANA RFC 1918. | 
| **management_ip_configuration** | [block](#management_ip_configuration-block-structure) |  -  |  -  |  A `management_ip_configuration` block, which allows force-tunnelling of traffic to be performed by the firewall. Adding or removing this block or changing the `subnet_id` in an existing block forces a new resource to be created. Changing this forces a new resource to be created. | 
| **threat_intel_mode** | string |  `Alert`  |  `Off`, `Alert`, `Deny`  |  The operation mode for threat intelligence-based filtering. Possible values are: `Off`, `Alert` and `Deny`. Defaults to `Alert`. | 
| **virtual_hub** | [block](#virtual_hub-block-structure) |  -  |  -  |  A `virtual_hub` block. | 
| **zones** | list |  -  |  -  |  Specifies a list of Availability Zones in which this Azure Firewall should be located. Changing this forces a new Azure Firewall to be created. -> **Please Note**: Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview). | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `virtual_hub` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `virtual_hub_id` | string | Yes | - | Specifies the ID of the Virtual Hub where the Firewall resides in. |
| `public_ip_count` | number | No | 1 | Specifies the number of public IPs to assign to the Firewall. Defaults to '1'. |

### `ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the IP Configuration. |
| `subnet_id` | string | No | - | Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created. -> **NOTE** The Subnet used for the Firewall must have the name 'AzureFirewallSubnet' and the subnet mask must be at least a '/26'. -> **NOTE** At least one and only one 'ip_configuration' block may contain a 'subnet_id'. |
| `public_ip_address_id` | string | No | - | The ID of the Public IP Address associated with the firewall. -> **NOTE** A public ip address is required unless a 'management_ip_configuration' block is specified. -> **NOTE** When multiple 'ip_configuration' blocks with 'public_ip_address_id' are configured, 'terraform apply' will raise an error when one or some of these 'ip_configuration' blocks are removed. because the 'public_ip_address_id' is still used by the 'firewall' resource until the 'firewall' resource is updated. and the destruction of 'azurerm_public_ip' happens before the update of firewall by default. to destroy of 'azurerm_public_ip' will cause the error. The workaround is to set 'create_before_destroy=true' to the 'azurerm_public_ip' resource 'lifecycle' block. See more detail: [destroying.md#create-before-destroy](https://github.com/hashicorp/terraform/blob/main/docs/destroying.md#create-before-destroy) -> **NOTE** The Public IP must have a 'Static' allocation and 'Standard' SKU. |

### `management_ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the IP Configuration. |
| `subnet_id` | string | Yes | - | Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created. -> **NOTE** The Management Subnet used for the Firewall must have the name 'AzureFirewallManagementSubnet' and the subnet mask must be at least a '/26'. |
| `public_ip_address_id` | string | Yes | - | The ID of the Public IP Address associated with the firewall. -> **NOTE** The Public IP must have a 'Static' allocation and 'Standard' SKU. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **public_ip_count** | number | No  | Specifies the number of public IPs to assign to the Firewall. Defaults to `1`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Azure Firewall. | 
| **ip_configuration** | block | No  | A `ip_configuration` block. | 
| **virtual_hub** | block | No  | A `virtual_hub` block. | 
| **private_ip_address** | string | No  | The private IP address associated with the Firewall. | 
| **public_ip_addresses** | string | No  | The list of public IP addresses associated with the Firewall. | 

Additionally, all variables are provided as outputs.
