# azurerm_virtual_network_gateway_nat_rule

Manages a Virtual Network Gateway Nat Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/virtual_network_gateway_nat_rule"   
}

inputs = {
   name = "The name which should be used for this Virtual Network Gateway Nat Rule..."   
   resource_group_name = "${resource_group}"   
   # virtual_network_gateway_id → set in component_inputs
   external_mapping = "One or more `external_mapping` blocks"   
   internal_mapping = "One or more `internal_mapping` blocks"   
}

component_inputs = {
   virtual_network_gateway_id = "path/to/virtual_network_gateway_component:id"   
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
| **name** | string |  The name which should be used for this Virtual Network Gateway Nat Rule. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The Name of the Resource Group in which this Virtual Network Gateway Nat Rule should be created. Changing this forces a new resource to be created. | 
| **virtual_network_gateway_id** | string |  The ID of the Virtual Network Gateway that this Virtual Network Gateway Nat Rule belongs to. Changing this forces a new resource to be created. | 
| **external_mapping** | string |  One or more `external_mapping` blocks. | 
| **internal_mapping** | string |  One or more `internal_mapping` blocks. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **ip_configuration_id** | string |  -  |  -  |  The ID of the IP Configuration this Virtual Network Gateway Nat Rule applies to. | 
| **mode** | string |  `EgressSnat`  |  `EgressSnat`, `IngressSnat`  |  The source Nat direction of the Virtual Network Gateway Nat. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created. | 
| **type** | string |  `Static`  |  `Dynamic`, `Static`  |  The type of the Virtual Network Gateway Nat Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Network Gateway Nat Rule. | 

Additionally, all variables are provided as outputs.
