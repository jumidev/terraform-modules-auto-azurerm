# azurerm_function_app_function

Manages a Function App Function.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/function_app_function" 
}

inputs = {
   name = "name of function_app_function" 
   function_app_id = "function_app_id of function_app_function" 
   config_json = "config_json of function_app_function" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string  The name of the function. Changing this forces a new resource to be created. | 
| **var.function_app_id** | string  The ID of the Function App in which this function should reside. Changing this forces a new resource to be created. | 
| **var.config_json** | string  The config for this Function in JSON format. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.enabled** | bool  `True`  |  -  |  Should this function be enabled. Defaults to `true`. | 
| **var.file** | block  -  |  -  |  A `file` block as detailed below. Changing this forces a new resource to be created. | 
| **var.language** | string  -  |  `CSharp`, `Custom`, `Java`, `Javascript`, `Python`, `PowerShell`, `TypeScript`  |  The language the Function is written in. Possible values are `CSharp`, `Custom`, `Java`, `Javascript`, `Python`, `PowerShell`, and `TypeScript`. | 
| **var.test_data** | string  -  |  -  |  The test data for the function. | 

### `file` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content` | string | Yes | - | The content of the file. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Function App Function | 
| **config_url** | string | No  | The URL of the configuration JSON. | 
| **invocation_url** | string | No  | The invocation URL. | 
| **script_root_path_url** | string | No  | The Script root path URL. | 
| **script_url** | string | No  | The script URL. | 
| **secrets_file_url** | string | No  | The URL for the Secrets File. | 
| **test_data_url** | string | No  | The Test data URL. | 
| **url** | string | No  | The function URL. | 

Additionally, all variables are provided as outputs.
