# azurerm_app_service_plan

Manages an App Service Plan component.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_service_plan`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan) resource instead.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "app_service_web_apps/app_service_plan"   
}

inputs = {
   name = "Specifies the name of the App Service Plan component..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku = {
      tier = "..."      
      size = "..."      
   }
   
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
| **name** | string |  Specifies the name of the App Service Plan component. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the App Service Plan component. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku** | [block](#sku-block-structure) |  A `sku` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **kind** | string |  `Windows`  |  `Windows`, `App`, `Linux`, `elastic`, `xenon`, `FunctionApp`  |  The kind of the App Service Plan to create. Possible values are `Windows` (also available as `App`), `Linux`, `elastic` (for Premium Consumption), `xenon` and `FunctionApp` (for a Consumption Plan). Defaults to `Windows`. Changing this forces a new resource to be created. | 
| **maximum_elastic_worker_count** | int |  -  |  -  |  The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan. | 
| **app_service_environment_id** | string |  -  |  -  |  The ID of the App Service Environment where the App Service Plan should be located. Changing forces a new resource to be created. | 
| **reserved** | string |  -  |  -  |  Is this App Service Plan `Reserved`. | 
| **per_site_scaling** | string |  -  |  -  |  Can Apps assigned to this App Service Plan be scaled independently? If set to `false` apps assigned to this plan will scale to all instances of the plan. | 
| **is_xenon** | string |  -  |  -  |  Whether to create a xenon App Service Plan. | 
| **zone_redundant** | string |  -  |  -  |  Specifies if the App Service Plan should be Zone Redundant. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `tier` | string | Yes | - | Specifies the plan's pricing tier. |
| `size` | string | Yes | - | Specifies the plan's instance size. |
| `capacity` | string | No | - | Specifies the number of workers associated with this App Service Plan. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Plan component. | 
| **maximum_number_of_workers** | int | No  | The maximum number of workers supported with the App Service Plan's sku. | 

Additionally, all variables are provided as outputs.
