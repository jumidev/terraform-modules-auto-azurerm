# azurerm_app_service_environment

Manages an App Service Environment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the App Service Environment. Changing this forces a new resource to be created. | 
| **subnet_id** | string | True | -  |  -  | The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created. | 
| **cluster_setting** | block | False | -  |  -  | Zero or more `cluster_setting` blocks. | 
| **internal_load_balancing_mode** | string | False | `None`  |  `None`, `Web`, `Publishing`, `"Web, Publishing"`  | Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are `None`, `Web`, `Publishing` and combined value `"Web, Publishing"`. Defaults to `None`. Changing this forces a new resource to be created. | 
| **pricing_tier** | string | False | `I1`  |  `I1`, `I2`, `I3`  | Pricing tier for the front end instances. Possible values are `I1`, `I2` and `I3`. Defaults to `I1`. | 
| **front_end_scale_factor** | string | False | `15`  |  `5`, `15`  | Scale factor for front end instances. Possible values are between `5` and `15`. Defaults to `15`. | 
| **allowed_user_ip_cidrs** | string | False | -  |  -  | Allowed user added IP ranges on the ASE database. Use the addresses you want to set as the explicit egress address ranges. | 
| **resource_group_name** | string | True | `subnet_id`  |  -  | The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by `subnet_id`). | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. Changing this forces a new resource to be created. | 

