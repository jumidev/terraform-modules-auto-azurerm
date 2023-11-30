# azurerm_app_service_environment

Manages an App Service Environment.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service_environment" 
}

inputs = {
   name = "name of app_service_environment" 
   subnet_id = "subnet_id of app_service_environment" 
   resource_group_name = "subnet_id" 
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
| **var.name** | string | True | -  |  -  |  The name of the App Service Environment. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string | True | -  |  -  |  The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created. | 
| **var.cluster_setting** | block | False | -  |  -  |  Zero or more `cluster_setting` blocks. | 
| **var.internal_load_balancing_mode** | string | False | `None`  |  `None`, `Web`, `Publishing`, `"Web, Publishing"`  |  Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are `None`, `Web`, `Publishing` and combined value `"Web, Publishing"`. Defaults to `None`. Changing this forces a new resource to be created. | 
| **var.pricing_tier** | string | False | `I1`  |  `I1`, `I2`, `I3`  |  Pricing tier for the front end instances. Possible values are `I1`, `I2` and `I3`. Defaults to `I1`. | 
| **var.front_end_scale_factor** | string | False | `15`  |  `5`, `15`  |  Scale factor for front end instances. Possible values are between `5` and `15`. Defaults to `15`. | 
| **var.allowed_user_ip_cidrs** | string | False | -  |  -  |  Allowed user added IP ranges on the ASE database. Use the addresses you want to set as the explicit egress address ranges. | 
| **var.resource_group_name** | string | True | `subnet_id`  |  -  |  The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by `subnet_id`). | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. Changing this forces a new resource to be created. | 

### `cluster_setting` block structure

> `name` (string): (REQUIRED) The name of the Cluster Setting.
> `value` (string): (REQUIRED) The value for the Cluster Setting.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Environment. | 
| **internal_ip_address** | string | No  | IP address of internal load balancer of the App Service Environment. | 
| **location** | string | No  | The location where the App Service Environment exists. | 
| **outbound_ip_addresses** | string | No  | List of outbound IP addresses of the App Service Environment. | 
| **service_ip_address** | string | No  | IP address of service endpoint of the App Service Environment. | 

Additionally, all variables are provided as outputs.
