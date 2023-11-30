# azurerm_virtual_network_dns_servers

Manages the DNS servers associated with a virtual network.~> **NOTE on Virtual Networks and DNS Servers:** Terraform currently provides both a standalone [virtual network DNS Servers resource](virtual_network_dns_servers.html), and allows for DNS servers to be defined in-line within the [Virtual Network resource](virtual_network.html).At this time you cannot use a Virtual Network with in-line DNS servers in conjunction with any Virtual Network DNS Servers resources. Doing so will cause a conflict of Virtual Network DNS Servers configurations and will overwrite virtual networks DNS servers.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_network_dns_servers" 
}

inputs = {
   virtual_network_id = "virtual_network_id of virtual_network_dns_servers" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.virtual_network_id** | string |  The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.dns_servers** | string |  List of IP addresses of DNS servers | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The virtual network DNS server ID. | 

Additionally, all variables are provided as outputs.
