# azurerm_app_configuration_feature

Manages an Azure App Configuration Feature.-> **Note:** App Configuration Features are provisioned using a Data Plane API which requires the role `App Configuration Data Owner` on either the App Configuration or a parent scope (such as the Resource Group/Subscription). [More information can be found in the Azure Documentation for App Configuration](https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac#azure-built-in-roles-for-azure-app-configuration). This is similar to providing App Configuration Keys.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.configuration_store_id** | string | True | -  |  -  | Specifies the id of the App Configuration. Changing this forces a new resource to be created. | 
| **var.description** | string | False | -  |  -  | The description of the App Configuration Feature. | 
| **var.enabled** | bool | False | -  |  -  | The status of the App Configuration Feature. By default, this is set to false. | 
| **var.key** | string | False | -  |  -  | The key of the App Configuration Feature. The value for `name` will be used if this is unspecified. Changing this forces a new resource to be created. | 
| **var.label** | string | False | -  |  -  | The label of the App Configuration Feature. Changing this forces a new resource to be created. | 
| **var.locked** | string | False | -  |  -  | Should this App Configuration Feature be Locked to prevent changes? | 
| **var.name** | string | True | -  |  -  | The name of the App Configuration Feature. Changing this forces a new resource to be created. | 
| **var.percentage_filter_value** | string | False | -  |  -  | A number representing the value of the percentage required to enable this feature. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **var.targeting_filter** | block | False | -  |  -  | A `targeting_filter` block. | 
| **var.timewindow_filter** | block | False | -  |  -  | A `timewindow_filter` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **configuration_store_id** | string  | - | 
| **description** | string  | - | 
| **enabled** | bool  | - | 
| **key** | string  | - | 
| **label** | string  | - | 
| **locked** | string  | - | 
| **name** | string  | - | 
| **percentage_filter_value** | string  | - | 
| **tags** | map  | - | 
| **targeting_filter** | block  | - | 
| **timewindow_filter** | block  | - | 
| **id** | string  | The App Configuration Feature ID. | 