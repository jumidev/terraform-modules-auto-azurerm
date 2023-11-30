# azurerm_firewall

Manages an Azure Firewall.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/firewall" 
}

inputs = {
   name = "name of firewall" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku_name = "sku_name of firewall" 
   sku_tier = "sku_tier of firewall" 
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
| **var.name** | string |  -  |  Specifies the name of the Firewall. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **var.location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku_name** | string |  `AZFW_Hub`, `AZFW_VNet`  |  SKU name of the Firewall. Possible values are `AZFW_Hub` and `AZFW_VNet`. Changing this forces a new resource to be created. | 
| **var.sku_tier** | string |  `Premium`, `Standard`, `Basic`  |  SKU tier of the Firewall. Possible values are `Premium`, `Standard` and `Basic`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.firewall_policy_id** | string |  -  |  -  |  The ID of the Firewall Policy applied to this Firewall. | 
| **var.ip_configuration** | block |  -  |  -  |  An `ip_configuration` block. | 
| **var.dns_servers** | list |  -  |  -  |  A list of DNS servers that the Azure Firewall will direct DNS traffic to the for name resolution. | 
| **var.private_ip_ranges** | list |  -  |  -  |  A list of SNAT private CIDR IP ranges, or the special string `IANAPrivateRanges`, which indicates Azure Firewall does not SNAT when the destination IP address is a private range per IANA RFC 1918. | 
| **var.management_ip_configuration** | block |  -  |  -  |  A `management_ip_configuration` block, which allows force-tunnelling of traffic to be performed by the firewall. Adding or removing this block or changing the `subnet_id` in an existing block forces a new resource to be created. Changing this forces a new resource to be created. | 
| **var.threat_intel_mode** | string |  `Alert`  |  `Off`, `Alert`, `Deny`  |  The operation mode for threat intelligence-based filtering. Possible values are: `Off`, `Alert` and `Deny`. Defaults to `Alert`. | 
| **var.virtual_hub** | block |  -  |  -  |  A `virtual_hub` block. | 
| **var.zones** | string |  -  |  -  |  Specifies a list of Availability Zones in which this Azure Firewall should be located. Changing this forces a new Azure Firewall to be created. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | No | - | Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created. |
| `public_ip_address_id` | string | No | - | The ID of the Public IP Address associated with the firewall. |

### `management_ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | Yes | - | Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created. |
| `public_ip_address_id` | string | Yes | - | The ID of the Public IP Address associated with the firewall. |

### `virtual_hub` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `virtual_hub_id` | string | Yes | - | Specifies the ID of the Virtual Hub where the Firewall resides in. |
| `public_ip_count` | int | No | 1 | Specifies the number of public IPs to assign to the Firewall. Defaults to '1'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Firewall. | 
| **ip_configuration** | block | No  | A `ip_configuration` block. | 
| **virtual_hub** | block | No  | A `virtual_hub` block. | 
| **private_ip_address** | string | No  | The private IP address associated with the Firewall. | 
| **public_ip_addresses** | string | No  | The list of public IP addresses associated with the Firewall. | 

Additionally, all variables are provided as outputs.
