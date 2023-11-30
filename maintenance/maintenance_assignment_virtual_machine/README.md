# azurerm_maintenance_assignment_virtual_machine

Manages a maintenance assignment to virtual machine.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "maintenance/maintenance_assignment_virtual_machine" 
}

inputs = {
   location = "${location}" 
   maintenance_configuration_id = "maintenance_configuration_id of maintenance_assignment_virtual_machine" 
   virtual_machine_id = "virtual_machine_id of maintenance_assignment_virtual_machine" 
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
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.maintenance_configuration_id** | string | True | Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created. | 
| **var.virtual_machine_id** | string | True | Specifies the Virtual Machine ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Maintenance Assignment. | 

Additionally, all variables are provided as outputs.
