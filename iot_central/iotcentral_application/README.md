# azurerm_iotcentral_application

Manages an IoT Central Application

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "iot_central/iotcentral_application"   
}

inputs = {
   name = "Specifies the name of the IotHub resource"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sub_domain = "A `sub_domain` name"   
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
| **name** | string |  Specifies the name of the IotHub resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource has to be create. Changing this forces a new resource to be created. | 
| **sub_domain** | string |  A `sub_domain` name. Subdomain for the IoT Central URL. Each application must have a unique subdomain. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **display_name** | string |  -  |  -  |  A `display_name` name. Custom display name for the IoT Central application. Default is resource name. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether public network access is allowed for the IoT Central Application. Defaults to `true`. | 
| **sku** | string |  `ST1`  |  `ST0`, `ST1`, `ST2`  |  A `sku` name. Possible values is `ST0`, `ST1`, `ST2`, Default value is `ST1` | 
| **template** | string |  -  |  -  |  A `template` name. IoT Central application template name. Default is a custom application. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this IoT Central Application. The only possible value is 'SystemAssigned'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoT Central Application. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
