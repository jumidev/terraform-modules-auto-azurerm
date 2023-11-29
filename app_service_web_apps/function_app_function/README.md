# azurerm_function_app_function

Manages a Function App Function.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the function. Changing this forces a new resource to be created. | 
| **var.function_app_id** | string | True | -  |  -  | The ID of the Function App in which this function should reside. Changing this forces a new resource to be created. | 
| **var.config_json** | string | True | -  |  -  | The config for this Function in JSON format. | 
| **var.enabled** | bool | False | `True`  |  -  | Should this function be enabled. Defaults to `true`. | 
| **var.file** | block | False | -  |  -  | A `file` block as detailed below. Changing this forces a new resource to be created. | 
| **var.language** | string | False | -  |  `CSharp`, `Custom`, `Java`, `Javascript`, `Python`, `PowerShell`, `TypeScript`  | The language the Function is written in. Possible values are `CSharp`, `Custom`, `Java`, `Javascript`, `Python`, `PowerShell`, and `TypeScript`. | 
| **var.test_data** | string | False | -  |  -  | The test data for the function. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **function_app_id** | string  | - | 
| **config_json** | string  | - | 
| **enabled** | bool  | - | 
| **file** | block  | - | 
| **language** | string  | - | 
| **test_data** | string  | - | 
| **id** | string  | The ID of the Function App Function | 
| **config_url** | string  | The URL of the configuration JSON. | 
| **invocation_url** | string  | The invocation URL. | 
| **script_root_path_url** | string  | The Script root path URL. | 
| **script_url** | string  | The script URL. | 
| **secrets_file_url** | string  | The URL for the Secrets File. | 
| **test_data_url** | string  | The Test data URL. | 
| **url** | string  | The function URL. | 