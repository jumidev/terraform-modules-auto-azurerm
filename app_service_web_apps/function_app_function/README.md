# azurerm_function_app_function

Manages a Function App Function.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the function. Changing this forces a new resource to be created. | 
| **function_app_id** | string | True | -  |  -  | The ID of the Function App in which this function should reside. Changing this forces a new resource to be created. | 
| **config_json** | string | True | -  |  -  | The config for this Function in JSON format. | 
| **enabled** | bool | False | `True`  |  -  | Should this function be enabled. Defaults to `true`. | 
| **file** | block | False | -  |  -  | A `file` block as detailed below. Changing this forces a new resource to be created. | 
| **language** | string | False | -  |  `CSharp`, `Custom`, `Java`, `Javascript`, `Python`, `PowerShell`, `TypeScript`  | The language the Function is written in. Possible values are `CSharp`, `Custom`, `Java`, `Javascript`, `Python`, `PowerShell`, and `TypeScript`. | 
| **test_data** | string | False | -  |  -  | The test data for the function. | 

