# azurerm_automation_python3_package

Manages a Automation Python3 Package.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Python3 Package is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Python3 Package is created. Changing this forces a new resource to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Automation Python3 Package. Changing this forces a new Automation Python3 Package to be created. | 
| **content_uri** | string | True | -  |  -  | The URL of the python package. Changing this forces a new Automation Python3 Package to be created. | 
| **content_version** | string | False | -  |  -  | Specify the version of the python3 package. The value should meet the system.version class format like `1.1.1`. Changing this forces a new Automation Python3 Package to be created. | 
| **hash_algorithm** | string | False | -  |  -  | Specify the hash algorithm used to hash the content of the python3 package. Changing this forces a new Automation Python3 Package to be created. | 
| **hash_value** | string | False | -  |  -  | Specity the hash value of the content. Changing this forces a new Automation Python3 Package to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Automation Python3 Package. | 

