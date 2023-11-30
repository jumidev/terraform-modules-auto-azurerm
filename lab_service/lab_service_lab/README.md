# azurerm_lab_service_lab

Manages a Lab Service Lab.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Lab Service Lab. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Lab Service Lab should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region where the Lab Service Lab should exist. Changing this forces a new resource to be created. | 
| **var.security** | block | True | A `security` block. | 
| **var.title** | string | True | The title of the Lab Service Lab. | 
| **var.virtual_machine** | block | True | A `virtual_machine` block. | 
| **var.auto_shutdown** | block | False | An `auto_shutdown` block. | 
| **var.connection_setting** | block | False | A `connection_setting` block. | 
| **var.description** | string | False | The description of the Lab Service Lab. | 
| **var.lab_plan_id** | string | False | The resource ID of the Lab Plan that is used during resource creation to provide defaults and acts as a permission container when creating a Lab Service Lab via `labs.azure.com`. | 
| **var.network** | block | False | A `network` block. | 
| **var.roster** | block | False | A `roster` block. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Lab Service Lab. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **security** | block  | - | 
| **title** | string  | - | 
| **virtual_machine** | block  | - | 
| **auto_shutdown** | block  | - | 
| **connection_setting** | block  | - | 
| **description** | string  | - | 
| **lab_plan_id** | string  | - | 
| **network** | block  | - | 
| **roster** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Lab Service Lab. | 
| **security** | block  | A `security` block. | 
| **network** | block  | A `network` block. | 
| **registration_code** | string  | The registration code for the Lab Service Lab. | 
| **load_balancer_id** | string  | The resource ID of the Load Balancer for the network profile of the Lab Service Lab. | 
| **public_ip_id** | string  | The resource ID of the Public IP for the network profile of the Lab Service Lab. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "lab_service/lab_service_lab" 
}

inputs = {
   name = "name of lab_service_lab" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   security = "security of lab_service_lab" 
   title = "title of lab_service_lab" 
   virtual_machine = "virtual_machine of lab_service_lab" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```