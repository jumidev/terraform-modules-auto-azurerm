# azurerm_app_service_environment

Manages an App Service Environment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "app_service_web_apps/app_service_environment"   
}

inputs = {
   name = "The name of the App Service Environment"   
   # subnet_id → set in component_inputs
   resource_group_name = "subnet_id"   
}

component_inputs = {
   subnet_id = "path/to/subnet_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the App Service Environment. Changing this forces a new resource to be created. | 
| **subnet_id** | string |  -  |  The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  `subnet_id`  |  The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by `subnet_id`). | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **cluster_setting** | [block](#cluster_setting-block-structure) |  -  |  -  |  Zero or more `cluster_setting` blocks. | 
| **internal_load_balancing_mode** | string |  `None`  |  `None`, `Web`, `Publishing`, `"Web, Publishing"`  |  Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are `None`, `Web`, `Publishing` and combined value `"Web, Publishing"`. Defaults to `None`. Changing this forces a new resource to be created. | 
| **pricing_tier** | string |  `I1`  |  `I1`, `I2`, `I3`  |  Pricing tier for the front end instances. Possible values are `I1`, `I2` and `I3`. Defaults to `I1`. | 
| **front_end_scale_factor** | string |  `15`  |  `5`, `15`  |  Scale factor for front end instances. Possible values are between `5` and `15`. Defaults to `15`. | 
| **allowed_user_ip_cidrs** | string |  -  |  -  |  Allowed user added IP ranges on the ASE database. Use the addresses you want to set as the explicit egress address ranges. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. Changing this forces a new resource to be created. | 

### `cluster_setting` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Cluster Setting. |
| `value` | string | Yes | - | The value for the Cluster Setting. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Environment. | 
| **internal_ip_address** | string | No  | IP address of internal load balancer of the App Service Environment. | 
| **location** | string | No  | The location where the App Service Environment exists. | 
| **outbound_ip_addresses** | string | No  | List of outbound IP addresses of the App Service Environment. | 
| **service_ip_address** | string | No  | IP address of service endpoint of the App Service Environment. | 

Additionally, all variables are provided as outputs.
