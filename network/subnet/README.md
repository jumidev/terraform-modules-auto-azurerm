# azurerm_subnet

Manages a subnet. Subnets represent network segments within the IP space defined by the virtual network.~> **NOTE on Virtual Networks and Subnets:** Terraform currentlyprovides both a standalone [Subnet resource](subnet.html), and allows for Subnets to be defined in-line within the [Virtual Network resource](virtual_network.html).At this time you cannot use a Virtual Network with in-line Subnets in conjunction with any Subnet resources. Doing so will cause a conflict of Subnet configurations and will overwrite Subnets.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/subnet" 
}

inputs = {
   name = "name of subnet" 
   resource_group_name = "${resource_group}" 
   virtual_network_name = "virtual_network_name of subnet" 
   address_prefixes = "address_prefixes of subnet" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the subnet. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the subnet. Changing this forces a new resource to be created. | 
| **var.virtual_network_name** | string | True | -  |  -  |  The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created. | 
| **var.address_prefixes** | string | True | -  |  -  |  The address prefixes to use for the subnet. | 
| **var.delegation** | block | False | -  |  -  |  One or more `delegation` blocks. | 
| **var.private_endpoint_network_policies_enabled** | bool | False | `True`  |  -  |  Enable or Disable network policies for the private endpoint on the subnet. Setting this to `true` will **Enable** the policy and setting this to `false` will **Disable** the policy. Defaults to `true`. | 
| **var.private_link_service_network_policies_enabled** | bool | False | `True`  |  -  |  Enable or Disable network policies for the private link service on the subnet. Setting this to `true` will **Enable** the policy and setting this to `false` will **Disable** the policy. Defaults to `true`. | 
| **var.service_endpoints** | string | False | -  |  `Microsoft.AzureActiveDirectory`, `Microsoft.AzureCosmosDB`, `Microsoft.ContainerRegistry`, `Microsoft.EventHub`, `Microsoft.KeyVault`, `Microsoft.ServiceBus`, `Microsoft.Sql`, `Microsoft.Storage`, `Microsoft.Storage.Global`, `Microsoft.Web`  |  The list of Service endpoints to associate with the subnet. Possible values include: `Microsoft.AzureActiveDirectory`, `Microsoft.AzureCosmosDB`, `Microsoft.ContainerRegistry`, `Microsoft.EventHub`, `Microsoft.KeyVault`, `Microsoft.ServiceBus`, `Microsoft.Sql`, `Microsoft.Storage`, `Microsoft.Storage.Global` and `Microsoft.Web`. | 
| **var.service_endpoint_policy_ids** | string | False | -  |  -  |  The list of IDs of Service Endpoint Policies to associate with the subnet. | 

### `delegation` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | A name for this delegation. |
| `service_delegation` | block | Yes | - | A 'service_delegation' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The subnet ID. | 
| **name** | string | No  | The name of the subnet. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | No  | The name of the resource group in which the subnet is created in. | 
| **virtual_network_name** | string | No  | The name of the virtual network in which the subnet is created in. Changing this forces a new resource to be created. | 
| **address_prefixes** | string | No  | The address prefixes for the subnet | 

Additionally, all variables are provided as outputs.
