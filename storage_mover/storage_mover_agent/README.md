# azurerm_storage_mover_agent

Manages a Storage Mover Agent.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage_mover/storage_mover_agent"   
}

inputs = {
   name = "Specifies the name which should be used for this Storage Mover Agent..."   
   arc_virtual_machine_id = "Specifies the fully qualified ID of the Hybrid Compute resource for the Storage ..."   
   arc_virtual_machine_uuid = "Specifies the Hybrid Compute resource's unique SMBIOS ID..."   
   # storage_mover_id → set in tfstate_inputs
}

tfstate_inputs = {
   storage_mover_id = "path/to/storage_mover_component:id"   
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
| **name** | string |  Specifies the name which should be used for this Storage Mover Agent. Changing this forces a new resource to be created. | 
| **arc_virtual_machine_id** | string |  Specifies the fully qualified ID of the Hybrid Compute resource for the Storage Mover Agent. Changing this forces a new resource to be created. | 
| **arc_virtual_machine_uuid** | string |  Specifies the Hybrid Compute resource's unique SMBIOS ID. Changing this forces a new resource to be created. | 
| **storage_mover_id** | string |  Specifies the ID of the Storage Mover that this Agent should be connected to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  Specifies a description for this Storage Mover Agent. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Mover Agent. | 

Additionally, all variables are provided as outputs.
