# azurerm_service_plan

Manages an App Service: Service Plan.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Service Plan. Changing this forces a new AppService to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure Region where the Service Plan should exist. Changing this forces a new AppService to be created. | 
| **var.os_type** | string | True | -  |  `Windows`, `Linux`, `WindowsContainer`  |  The O/S type for the App Services to be hosted in this plan. Possible values include `Windows`, `Linux`, and `WindowsContainer`. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the AppService should exist. Changing this forces a new AppService to be created. | 
| **var.sku_name** | string | True | -  |  `B1`, `B2`, `B3`, `D1`, `F1`, `I1`, `I2`, `I3`, `I1v2`, `I2v2`, `I3v2`, `I4v2`, `I5v2`, `I6v2`, `P1v2`, `P2v2`, `P3v2`, `P0v3`, `P1v3`, `P2v3`, `P3v3`, `P1mv3`, `P2mv3`, `P3mv3`, `P4mv3`, `P5mv3`, `S1`, `S2`, `S3`, `SHARED`, `EP1`, `EP2`, `EP3`, `WS1`, `WS2`, `WS3`, `Y1`  |  The SKU for the plan. Possible values include `B1`, `B2`, `B3`, `D1`, `F1`, `I1`, `I2`, `I3`, `I1v2`, `I2v2`, `I3v2`, `I4v2`, `I5v2`, `I6v2`, `P1v2`, `P2v2`, `P3v2`, `P0v3`, `P1v3`, `P2v3`, `P3v3`, `P1mv3`, `P2mv3`, `P3mv3`, `P4mv3`, `P5mv3`, `S1`, `S2`, `S3`, `SHARED`, `EP1`, `EP2`, `EP3`, `WS1`, `WS2`, `WS3`, and `Y1`. | 
| **var.app_service_environment_id** | string | False | -  |  -  |  The ID of the App Service Environment to create this Service Plan in. | 
| **var.maximum_elastic_worker_count** | int | False | -  |  -  |  The maximum number of workers to use in an Elastic SKU Plan. Cannot be set unless using an Elastic SKU. | 
| **var.worker_count** | int | False | -  |  -  |  The number of Workers (instances) to be allocated. | 
| **var.per_site_scaling_enabled** | bool | False | `False`  |  -  |  Should Per Site Scaling be enabled. Defaults to `false`. | 
| **var.zone_balancing_enabled** | bool | False | -  |  -  |  Should the Service Plan balance across Availability Zones in the region. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the AppService. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **os_type** | string  | - | 
| **resource_group_name** | string  | - | 
| **sku_name** | string  | - | 
| **app_service_environment_id** | string  | - | 
| **maximum_elastic_worker_count** | int  | - | 
| **worker_count** | int  | - | 
| **per_site_scaling_enabled** | bool  | - | 
| **zone_balancing_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Service Plan. | 
| **kind** | string  | A string representing the Kind of Service Plan. | 
| **reserved** | string  | Whether this is a reserved Service Plan Type. `true` if `os_type` is `Linux`, otherwise `false`. | 