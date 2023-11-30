# azurerm_arc_resource_bridge_appliance

Manages an Arc Resource Bridge Appliance.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "arc_resource_bridge/arc_resource_bridge_appliance" 
}

inputs = {
   name = "name of arc_resource_bridge_appliance" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   distro = "distro of arc_resource_bridge_appliance" 
   identity = "identity of arc_resource_bridge_appliance" 
   infrastructure_provider = "infrastructure_provider of arc_resource_bridge_appliance" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The Name which should be used for this Arc Resource Bridge Appliance. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the resource group where the Arc Resource Bridge Appliance exists. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Arc Resource Bridge Appliance should exist. Changing this forces a new resource to be created. | 
| **var.distro** | string | True | -  |  Specifies a supported Fabric/Infrastructure for this Arc Resource Bridge Appliance. The possible value is `AKSEdge`. | 
| **var.identity** | block | True | -  |  An `identity` block. Changing this forces a new resource to be created. | | `identity` block structure: || 
|   type (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Arc Resource Bridge Appliance. The only possible value is 'SystemAssigned'. Changing this forces a new resource to be created. ||

| **var.infrastructure_provider** | string | True | `HCI`, `SCVMM`, `VMWare`  |  The infrastructure provider about the connected Arc Resource Bridge Appliance. Possible values are `HCI`,`SCVMM` and `VMWare`. Changing this forces a new resource to be created. | 
| **var.public_key_base64** | string | False | -  |  The `public_key_base64` is an RSA public key in PKCS1 format encoded in base64. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Arc Resource Bridge Appliance. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Arc Resource Bridge Appliance. | 

Additionally, all variables are provided as outputs.
