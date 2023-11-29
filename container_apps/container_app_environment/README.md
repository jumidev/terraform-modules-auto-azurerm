# azurerm_container_app_environment

Manages a Container App Environment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Container Apps Managed Environment. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the Container App Environment is to exist. Changing this forces a new resource to be created. | 
| **dapr_application_insights_connection_string** | string | False | -  |  -  | Application Insights connection string used by Dapr to export Service to Service communication telemetry. Changing this forces a new resource to be created. | 
| **infrastructure_subnet_id** | string | False | -  |  -  | The existing Subnet to use for the Container Apps Control Plane. Changing this forces a new resource to be created. | 
| **internal_load_balancer_enabled** | bool | False | `False`  |  -  | Should the Container Environment operate in Internal Load Balancing Mode? Defaults to `false`. Changing this forces a new resource to be created. | 
| **zone_redundancy_enabled** | bool | False | `False`  |  -  | Should the Container App Environment be created with Zone Redundancy enabled? Defaults to `false`. Changing this forces a new resource to be created. | 
| **log_analytics_workspace_id** | string | False | -  |  -  | The ID for the Log Analytics Workspace to link this Container Apps Managed Environment to. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

