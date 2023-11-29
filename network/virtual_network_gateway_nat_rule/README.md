# azurerm_virtual_network_gateway_nat_rule

Manages a Virtual Network Gateway Nat Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Virtual Network Gateway Nat Rule. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The Name of the Resource Group in which this Virtual Network Gateway Nat Rule should be created. Changing this forces a new resource to be created. | 
| **virtual_network_gateway_id** | string | True | -  |  -  | The ID of the Virtual Network Gateway that this Virtual Network Gateway Nat Rule belongs to. Changing this forces a new resource to be created. | 
| **external_mapping** | list | True | -  |  -  | One or more `external_mapping` blocks. | 
| **internal_mapping** | list | True | -  |  -  | One or more `internal_mapping` blocks. | 
| **ip_configuration_id** | string | False | -  |  -  | The ID of the IP Configuration this Virtual Network Gateway Nat Rule applies to. | 
| **mode** | string | False | `EgressSnat`  |  `EgressSnat`, `IngressSnat`  | The source Nat direction of the Virtual Network Gateway Nat. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created. | 
| **type** | string | False | `Static`  |  `Dynamic`, `Static`  | The type of the Virtual Network Gateway Nat Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created. | 

