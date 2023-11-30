# azurerm_storage_mover_agent

Manages a Storage Mover Agent.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage_mover/storage_mover_agent" 
}

inputs = {
   name = "name of storage_mover_agent" 
   arc_virtual_machine_id = "arc_virtual_machine_id of storage_mover_agent" 
   arc_virtual_machine_uuid = "arc_virtual_machine_uuid of storage_mover_agent" 
   storage_mover_id = "storage_mover_id of storage_mover_agent" 
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
| **var.name** | string | True | Specifies the name which should be used for this Storage Mover Agent. Changing this forces a new resource to be created. | 
| **var.arc_virtual_machine_id** | string | True | Specifies the fully qualified ID of the Hybrid Compute resource for the Storage Mover Agent. Changing this forces a new resource to be created. | 
| **var.arc_virtual_machine_uuid** | string | True | Specifies the Hybrid Compute resource's unique SMBIOS ID. Changing this forces a new resource to be created. | 
| **var.storage_mover_id** | string | True | Specifies the ID of the Storage Mover that this Agent should be connected to. Changing this forces a new resource to be created. | 
| **var.description** | string | False | Specifies a description for this Storage Mover Agent. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Mover Agent. | 

Additionally, all variables are provided as outputs.
