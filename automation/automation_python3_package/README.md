# azurerm_automation_python3_package

Manages a Automation Python3 Package.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_python3_package" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_python3_package" 
   name = "name of automation_python3_package" 
   content_uri = "content_uri of automation_python3_package" 
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
| **var.resource_group_name** | string |  The name of the resource group in which the Python3 Package is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string |  The name of the automation account in which the Python3 Package is created. Changing this forces a new resource to be created. | 
| **var.name** | string |  The name which should be used for this Automation Python3 Package. Changing this forces a new Automation Python3 Package to be created. | 
| **var.content_uri** | string |  The URL of the python package. Changing this forces a new Automation Python3 Package to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.content_version** | string |  Specify the version of the python3 package. The value should meet the system.version class format like `1.1.1`. Changing this forces a new Automation Python3 Package to be created. | 
| **var.hash_algorithm** | string |  Specify the hash algorithm used to hash the content of the python3 package. Changing this forces a new Automation Python3 Package to be created. | 
| **var.hash_value** | string |  Specity the hash value of the content. Changing this forces a new Automation Python3 Package to be created. | 
| **var.tags** | map |  A mapping of tags which should be assigned to the Automation Python3 Package. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Python3 Package. | 

Additionally, all variables are provided as outputs.
