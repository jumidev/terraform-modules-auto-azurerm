# azurerm_firewall

Manages an Azure Firewall.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Firewall. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | True | -  |  `AZFW_Hub`, `AZFW_VNet`  |  SKU name of the Firewall. Possible values are `AZFW_Hub` and `AZFW_VNet`. Changing this forces a new resource to be created. | 
| **var.sku_tier** | string | True | -  |  `Premium`, `Standard`, `Basic`  |  SKU tier of the Firewall. Possible values are `Premium`, `Standard` and `Basic`. | 
| **var.firewall_policy_id** | string | False | -  |  -  |  The ID of the Firewall Policy applied to this Firewall. | 
| **var.ip_configuration** | block | False | -  |  -  |  An `ip_configuration` block. | 
| **var.dns_servers** | list | False | -  |  -  |  A list of DNS servers that the Azure Firewall will direct DNS traffic to the for name resolution. | 
| **var.private_ip_ranges** | list | False | -  |  -  |  A list of SNAT private CIDR IP ranges, or the special string `IANAPrivateRanges`, which indicates Azure Firewall does not SNAT when the destination IP address is a private range per IANA RFC 1918. | 
| **var.management_ip_configuration** | block | False | -  |  -  |  A `management_ip_configuration` block, which allows force-tunnelling of traffic to be performed by the firewall. Adding or removing this block or changing the `subnet_id` in an existing block forces a new resource to be created. Changing this forces a new resource to be created. | 
| **var.threat_intel_mode** | string | False | `Alert`  |  `Off`, `Alert`, `Deny`  |  The operation mode for threat intelligence-based filtering. Possible values are: `Off`, `Alert` and `Deny`. Defaults to `Alert`. | 
| **var.virtual_hub** | block | False | -  |  -  |  A `virtual_hub` block. | 
| **var.zones** | string | False | -  |  -  |  Specifies a list of Availability Zones in which this Azure Firewall should be located. Changing this forces a new Azure Firewall to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku_name** | string  | - | 
| **sku_tier** | string  | - | 
| **firewall_policy_id** | string  | - | 
| **ip_configuration** | block  | - | 
| **dns_servers** | list  | - | 
| **private_ip_ranges** | list  | - | 
| **management_ip_configuration** | block  | - | 
| **threat_intel_mode** | string  | - | 
| **virtual_hub** | block  | - | 
| **zones** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Azure Firewall. | 
| **ip_configuration** | block  | A `ip_configuration` block. | 
| **virtual_hub** | block  | A `virtual_hub` block. | 
| **private_ip_address** | string  | The private IP address associated with the Firewall. | 
| **public_ip_addresses** | string  | The list of public IP addresses associated with the Firewall. | 

## Example minimal hclt

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