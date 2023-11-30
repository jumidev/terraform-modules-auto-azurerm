# azurerm_app_configuration_feature

Manages an Azure App Configuration Feature.-> **Note:** App Configuration Features are provisioned using a Data Plane API which requires the role `App Configuration Data Owner` on either the App Configuration or a parent scope (such as the Resource Group/Subscription). [More information can be found in the Azure Documentation for App Configuration](https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac#azure-built-in-roles-for-azure-app-configuration). This is similar to providing App Configuration Keys.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_configuration/app_configuration_feature" 
}

inputs = {
   configuration_store_id = "configuration_store_id of app_configuration_feature" 
   name = "name of app_configuration_feature" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.configuration_store_id** | string | True | Specifies the id of the App Configuration. Changing this forces a new resource to be created. | 
| **var.description** | string | False | The description of the App Configuration Feature. | 
| **var.enabled** | bool | False | The status of the App Configuration Feature. By default, this is set to false. | 
| **var.key** | string | False | The key of the App Configuration Feature. The value for `name` will be used if this is unspecified. Changing this forces a new resource to be created. | 
| **var.label** | string | False | The label of the App Configuration Feature. Changing this forces a new resource to be created. | 
| **var.locked** | string | False | Should this App Configuration Feature be Locked to prevent changes? | 
| **var.name** | string | True | The name of the App Configuration Feature. Changing this forces a new resource to be created. | 
| **var.percentage_filter_value** | string | False | A number representing the value of the percentage required to enable this feature. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 
| **var.targeting_filter** | block | False | A `targeting_filter` block. | 
| **var.timewindow_filter** | block | False | A `timewindow_filter` block. | 

### `targeting_filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the group. |
| `rollout_percentage` | string | Yes | - | Rollout percentage of the group. |

### `timewindow_filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `start` | string | No | - | The earliest timestamp the feature is enabled. The timestamp must be in RFC3339 format. |
| `end` | string | No | - | The latest timestamp the feature is enabled. The timestamp must be in RFC3339 format. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The App Configuration Feature ID. | 

Additionally, all variables are provided as outputs.
