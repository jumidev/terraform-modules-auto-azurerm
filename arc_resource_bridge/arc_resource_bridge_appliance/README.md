# azurerm_arc_resource_bridge_appliance

Manages an Arc Resource Bridge Appliance.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The Name which should be used for this Arc Resource Bridge Appliance. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the resource group where the Arc Resource Bridge Appliance exists. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Arc Resource Bridge Appliance should exist. Changing this forces a new resource to be created. | 
| **distro** | string | True | -  |  -  | Specifies a supported Fabric/Infrastructure for this Arc Resource Bridge Appliance. The possible value is `AKSEdge`. | 
| **identity** | block | True | -  |  -  | An `identity` block. Changing this forces a new resource to be created. | 
| **infrastructure_provider** | string | True | -  |  `HCI`, `SCVMM`, `VMWare`  | The infrastructure provider about the connected Arc Resource Bridge Appliance. Possible values are `HCI`,`SCVMM` and `VMWare`. Changing this forces a new resource to be created. | 
| **public_key_base64** | string | False | -  |  -  | The `public_key_base64` is an RSA public key in PKCS1 format encoded in base64. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Arc Resource Bridge Appliance. | 

