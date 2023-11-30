# azurerm_container_app_environment

Manages a Container App Environment.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container_apps/container_app_environment" 
}

inputs = {
   name = "name of container_app_environment" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Container Apps Managed Environment. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the Container App Environment is to exist. Changing this forces a new resource to be created. | 
| **var.dapr_application_insights_connection_string** | string | False | -  |  Application Insights connection string used by Dapr to export Service to Service communication telemetry. Changing this forces a new resource to be created. | 
| **var.infrastructure_subnet_id** | string | False | -  |  The existing Subnet to use for the Container Apps Control Plane. Changing this forces a new resource to be created. | 
| **var.internal_load_balancer_enabled** | bool | False | `False`  |  Should the Container Environment operate in Internal Load Balancing Mode? Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.zone_redundancy_enabled** | bool | False | `False`  |  Should the Container App Environment be created with Zone Redundancy enabled? Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.log_analytics_workspace_id** | string | False | -  |  The ID for the Log Analytics Workspace to link this Container Apps Managed Environment to. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container App Environment | 
| **default_domain** | string | No  | The default, publicly resolvable, name of this Container App Environment. | 
| **docker_bridge_cidr** | string | No  | The network addressing in which the Container Apps in this Container App Environment will reside in CIDR notation. | 
| **platform_reserved_cidr** | string | No  | The IP range, in CIDR notation, that is reserved for environment infrastructure IP addresses. | 
| **platform_reserved_dns_ip_address** | string | No  | The IP address from the IP range defined by `platform_reserved_cidr` that is reserved for the internal DNS server. | 
| **static_ip_address** | string | No  | The Static IP address of the Environment. | 

Additionally, all variables are provided as outputs.
