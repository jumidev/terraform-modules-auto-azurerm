# azurerm_firewall

Manages an Azure Firewall.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Firewall. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku_name** | string | True | -  |  `AZFW_Hub`, `AZFW_VNet`  | SKU name of the Firewall. Possible values are `AZFW_Hub` and `AZFW_VNet`. Changing this forces a new resource to be created. | 
| **sku_tier** | string | True | -  |  `Premium`, `Standard`, `Basic`  | SKU tier of the Firewall. Possible values are `Premium`, `Standard` and `Basic`. | 
| **firewall_policy_id** | string | False | -  |  -  | The ID of the Firewall Policy applied to this Firewall. | 
| **ip_configuration** | block | False | -  |  -  | An `ip_configuration` block. | 
| **dns_servers** | list | False | -  |  -  | A list of DNS servers that the Azure Firewall will direct DNS traffic to the for name resolution. | 
| **private_ip_ranges** | list | False | -  |  -  | A list of SNAT private CIDR IP ranges, or the special string `IANAPrivateRanges`, which indicates Azure Firewall does not SNAT when the destination IP address is a private range per IANA RFC 1918. | 
| **management_ip_configuration** | block | False | -  |  -  | A `management_ip_configuration` block, which allows force-tunnelling of traffic to be performed by the firewall. Adding or removing this block or changing the `subnet_id` in an existing block forces a new resource to be created. Changing this forces a new resource to be created. | 
| **threat_intel_mode** | string | False | `Alert`  |  `Off`, `Alert`, `Deny`  | The operation mode for threat intelligence-based filtering. Possible values are: `Off`, `Alert` and `Deny`. Defaults to `Alert`. | 
| **virtual_hub** | block | False | -  |  -  | A `virtual_hub` block. | 
| **zones** | string | False | -  |  -  | Specifies a list of Availability Zones in which this Azure Firewall should be located. Changing this forces a new Azure Firewall to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

