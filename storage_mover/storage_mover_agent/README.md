# azurerm_storage_mover_agent

Manages a Storage Mover Agent.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name which should be used for this Storage Mover Agent. Changing this forces a new resource to be created. | 
| **var.arc_virtual_machine_id** | string | True | -  |  -  | Specifies the fully qualified ID of the Hybrid Compute resource for the Storage Mover Agent. Changing this forces a new resource to be created. | 
| **var.arc_virtual_machine_uuid** | string | True | -  |  -  | Specifies the Hybrid Compute resource's unique SMBIOS ID. Changing this forces a new resource to be created. | 
| **var.storage_mover_id** | string | True | -  |  -  | Specifies the ID of the Storage Mover that this Agent should be connected to. Changing this forces a new resource to be created. | 
| **var.description** | string | False | -  |  -  | Specifies a description for this Storage Mover Agent. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **arc_virtual_machine_id** | string  | - | 
| **arc_virtual_machine_uuid** | string  | - | 
| **storage_mover_id** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the Storage Mover Agent. | 