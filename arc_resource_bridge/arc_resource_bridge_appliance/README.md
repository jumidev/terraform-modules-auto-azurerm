# azurerm_arc_resource_bridge_appliance

Manages an Arc Resource Bridge Appliance.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The Name which should be used for this Arc Resource Bridge Appliance. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Specifies the resource group where the Arc Resource Bridge Appliance exists. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the Arc Resource Bridge Appliance should exist. Changing this forces a new resource to be created. | 
| **var.distro** | string | True | -  |  -  | Specifies a supported Fabric/Infrastructure for this Arc Resource Bridge Appliance. The possible value is `AKSEdge`. | 
| **var.identity** | block | True | -  |  -  | An `identity` block. Changing this forces a new resource to be created. | 
| **var.infrastructure_provider** | string | True | -  |  `HCI`, `SCVMM`, `VMWare`  | The infrastructure provider about the connected Arc Resource Bridge Appliance. Possible values are `HCI`,`SCVMM` and `VMWare`. Changing this forces a new resource to be created. | 
| **var.public_key_base64** | string | False | -  |  -  | The `public_key_base64` is an RSA public key in PKCS1 format encoded in base64. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Arc Resource Bridge Appliance. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **distro** | string  | - | 
| **identity** | block  | - | 
| **infrastructure_provider** | string  | - | 
| **public_key_base64** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Arc Resource Bridge Appliance. | 