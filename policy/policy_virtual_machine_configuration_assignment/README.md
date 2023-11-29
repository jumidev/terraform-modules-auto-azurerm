# azurerm_policy_virtual_machine_configuration_assignment

Applies a Guest Configuration Policy to a Virtual Machine.~> **NOTE:** You can create Guest Configuration Policies without defining a `azurerm_virtual_machine_extension` resource, however the policies will not be executed until a `azurerm_virtual_machine_extension` has been provisioned to the virtual machine.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Guest Configuration that will be assigned in this Guest Configuration Assignment. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure location where the Policy Virtual Machine Configuration Assignment should exist. Changing this forces a new resource to be created. | 
| **virtual_machine_id** | string | True | -  |  -  | The resource ID of the Policy Virtual Machine which this Guest Configuration Assignment should apply to. Changing this forces a new resource to be created. | 
| **configuration** | block | True | -  |  -  | A `configuration` block. | 

