# azurerm_dev_test_virtual_network

Manages a Virtual Network within a DevTest Lab.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dev_test/dev_test_virtual_network" 
}

inputs = {
   name = "name of dev_test_virtual_network" 
   lab_name = "lab_name of dev_test_virtual_network" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Dev Test Virtual Network. Changing this forces a new resource to be created. | 
| **var.lab_name** | string | True | Specifies the name of the Dev Test Lab in which the Virtual Network should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created. | 
| **var.description** | string | False | A description for the Virtual Network. | 
| **var.subnet** | block | False | A `subnet` block. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 

### `subnet` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `use_public_ip_address` | string | No | Allow | Can Virtual Machines in this Subnet use Public IP Addresses? Possible values are 'Allow', 'Default' and 'Deny'. Defaults to 'Allow'. |
| `use_in_virtual_machine_creation` | string | No | Allow | Can this subnet be used for creating Virtual Machines? Possible values are 'Allow', 'Default' and 'Deny'. Defaults to 'Allow'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Dev Test Virtual Network. | 
| **subnet** | block | No  | A `subnet` block. | 
| **unique_identifier** | string | No  | The unique immutable identifier of the Dev Test Virtual Network. | 
| **name** | string | No  | The name of the Subnet for this Virtual Network. | 

Additionally, all variables are provided as outputs.
