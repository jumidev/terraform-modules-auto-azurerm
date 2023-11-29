# azurerm_automation_python3_package

Manages a Automation Python3 Package.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Python3 Package is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Python3 Package is created. Changing this forces a new resource to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Automation Python3 Package. Changing this forces a new Automation Python3 Package to be created. | 
| **var.content_uri** | string | True | -  |  -  | The URL of the python package. Changing this forces a new Automation Python3 Package to be created. | 
| **var.content_version** | string | False | -  |  -  | Specify the version of the python3 package. The value should meet the system.version class format like `1.1.1`. Changing this forces a new Automation Python3 Package to be created. | 
| **var.hash_algorithm** | string | False | -  |  -  | Specify the hash algorithm used to hash the content of the python3 package. Changing this forces a new Automation Python3 Package to be created. | 
| **var.hash_value** | string | False | -  |  -  | Specity the hash value of the content. Changing this forces a new Automation Python3 Package to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Automation Python3 Package. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **automation_account_name** | string  | - | 
| **name** | string  | - | 
| **content_uri** | string  | - | 
| **content_version** | string  | - | 
| **hash_algorithm** | string  | - | 
| **hash_value** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Automation Python3 Package. | 