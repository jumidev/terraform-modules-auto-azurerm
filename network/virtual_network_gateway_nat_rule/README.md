# azurerm_virtual_network_gateway_nat_rule

Manages a Virtual Network Gateway Nat Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_network_gateway_nat_rule" 
}

inputs = {
   name = "name of virtual_network_gateway_nat_rule" 
   resource_group_name = "${resource_group}" 
   virtual_network_gateway_id = "virtual_network_gateway_id of virtual_network_gateway_nat_rule" 
   external_mapping = "external_mapping of virtual_network_gateway_nat_rule" 
   internal_mapping = "internal_mapping of virtual_network_gateway_nat_rule" 
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
| **var.name** | string |  The name which should be used for this Virtual Network Gateway Nat Rule. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The Name of the Resource Group in which this Virtual Network Gateway Nat Rule should be created. Changing this forces a new resource to be created. | 
| **var.virtual_network_gateway_id** | string |  The ID of the Virtual Network Gateway that this Virtual Network Gateway Nat Rule belongs to. Changing this forces a new resource to be created. | 
| **var.external_mapping** | list |  One or more `external_mapping` blocks. | 
| **var.internal_mapping** | list |  One or more `internal_mapping` blocks. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.ip_configuration_id** | string |  -  |  -  |  The ID of the IP Configuration this Virtual Network Gateway Nat Rule applies to. | 
| **var.mode** | string |  `EgressSnat`  |  `EgressSnat`, `IngressSnat`  |  The source Nat direction of the Virtual Network Gateway Nat. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created. | 
| **var.type** | string |  `Static`  |  `Dynamic`, `Static`  |  The type of the Virtual Network Gateway Nat Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Network Gateway Nat Rule. | 

Additionally, all variables are provided as outputs.
