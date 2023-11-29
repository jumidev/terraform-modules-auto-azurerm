# azurerm_app_configuration_feature

Manages an Azure App Configuration Feature.-> **Note:** App Configuration Features are provisioned using a Data Plane API which requires the role `App Configuration Data Owner` on either the App Configuration or a parent scope (such as the Resource Group/Subscription). [More information can be found in the Azure Documentation for App Configuration](https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac#azure-built-in-roles-for-azure-app-configuration). This is similar to providing App Configuration Keys.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **configuration_store_id** | string | True | -  |  -  | Specifies the id of the App Configuration. Changing this forces a new resource to be created. | 
| **description** | string | False | -  |  -  | The description of the App Configuration Feature. | 
| **enabled** | bool | False | -  |  -  | The status of the App Configuration Feature. By default, this is set to false. | 
| **key** | string | False | -  |  -  | The key of the App Configuration Feature. The value for `name` will be used if this is unspecified. Changing this forces a new resource to be created. | 
| **label** | string | False | -  |  -  | The label of the App Configuration Feature. Changing this forces a new resource to be created. | 
| **locked** | string | False | -  |  -  | Should this App Configuration Feature be Locked to prevent changes? | 
| **name** | string | True | -  |  -  | The name of the App Configuration Feature. Changing this forces a new resource to be created. | 
| **percentage_filter_value** | string | False | -  |  -  | A number representing the value of the percentage required to enable this feature. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **targeting_filter** | block | False | -  |  -  | A `targeting_filter` block. | 
| **timewindow_filter** | block | False | -  |  -  | A `timewindow_filter` block. | 

