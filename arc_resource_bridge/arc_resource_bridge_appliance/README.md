# azurerm_arc_resource_bridge_appliance

Manages an Arc Resource Bridge Appliance.

## Example `component.hclt`

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
   identity = {
      this_identity = {
         type = "..."         
      }
      
   }
   
   infrastructure_provider = "infrastructure_provider of arc_resource_bridge_appliance"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The Name which should be used for this Arc Resource Bridge Appliance. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  Specifies the resource group where the Arc Resource Bridge Appliance exists. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The Azure Region where the Arc Resource Bridge Appliance should exist. Changing this forces a new resource to be created. | 
| **distro** | string |  -  |  Specifies a supported Fabric/Infrastructure for this Arc Resource Bridge Appliance. The possible value is `AKSEdge`. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. Changing this forces a new resource to be created. | 
| **infrastructure_provider** | string |  `HCI`, `SCVMM`, `VMWare`  |  The infrastructure provider about the connected Arc Resource Bridge Appliance. Possible values are `HCI`,`SCVMM` and `VMWare`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **public_key_base64** | string |  The `public_key_base64` is an RSA public key in PKCS1 format encoded in base64. Changing this forces a new resource to be created. | 
| **tags** | map |  A mapping of tags which should be assigned to the Arc Resource Bridge Appliance. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Arc Resource Bridge Appliance. The only possible value is 'SystemAssigned'. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Arc Resource Bridge Appliance. | 

Additionally, all variables are provided as outputs.
