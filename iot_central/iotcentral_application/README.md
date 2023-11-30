# azurerm_iotcentral_application

Manages an IoT Central Application

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_central/iotcentral_application" 
}

inputs = {
   name = "name of iotcentral_application" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sub_domain = "sub_domain of iotcentral_application" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the IotHub resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource has to be create. Changing this forces a new resource to be created. | 
| **var.sub_domain** | string | True | -  |  -  |  A `sub_domain` name. Subdomain for the IoT Central URL. Each application must have a unique subdomain. | 
| **var.display_name** | string | False | -  |  -  |  A `display_name` name. Custom display name for the IoT Central application. Default is resource name. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Whether public network access is allowed for the IoT Central Application. Defaults to `true`. | 
| **var.sku** | string | False | -  |  `ST0`, `ST1`, `ST2`  |  A `sku` name. Possible values is `ST0`, `ST1`, `ST2`, Default value is `ST1` | 
| **var.template** | string | False | -  |  -  |  A `template` name. IoT Central application template name. Default is a custom application. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 

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
