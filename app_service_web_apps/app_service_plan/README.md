# azurerm_app_service_plan

Manages an App Service Plan component.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_service_plan`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan) resource instead.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service_plan" 
}

inputs = {
   name = "name of app_service_plan" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku = "sku of app_service_plan" 
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
| **var.name** | string | True | -  |  -  |  Specifies the name of the App Service Plan component. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the App Service Plan component. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.kind** | string | False | `Windows`  |  `Windows`, `App`, `Linux`, `elastic`, `xenon`, `FunctionApp`  |  The kind of the App Service Plan to create. Possible values are `Windows` (also available as `App`), `Linux`, `elastic` (for Premium Consumption), `xenon` and `FunctionApp` (for a Consumption Plan). Defaults to `Windows`. Changing this forces a new resource to be created. | 
| **var.maximum_elastic_worker_count** | int | False | -  |  -  |  The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan. | 
| **var.sku** | block | True | -  |  -  |  A `sku` block. | 
| **var.app_service_environment_id** | string | False | -  |  -  |  The ID of the App Service Environment where the App Service Plan should be located. Changing forces a new resource to be created. | 
| **var.reserved** | string | False | -  |  -  |  Is this App Service Plan `Reserved`. | 
| **var.per_site_scaling** | string | False | -  |  -  |  Can Apps assigned to this App Service Plan be scaled independently? If set to `false` apps assigned to this plan will scale to all instances of the plan. | 
| **var.is_xenon** | string | False | -  |  -  |  Whether to create a xenon App Service Plan. | 
| **var.zone_redundant** | string | False | -  |  -  |  Specifies if the App Service Plan should be Zone Redundant. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Plan component. | 
| **maximum_number_of_workers** | int | No  | The maximum number of workers supported with the App Service Plan's sku. | 

Additionally, all variables are provided as outputs.
