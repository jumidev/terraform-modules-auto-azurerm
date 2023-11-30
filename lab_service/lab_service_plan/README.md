# azurerm_lab_service_plan

Manages a Lab Service Plan.-> **Note:** Before using this resource, it's required to submit the request of registering the provider with Azure CLI `az provider register --namespace Microsoft.LabServices`.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "lab_service/lab_service_plan" 
}

inputs = {
   name = "name of lab_service_plan" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   allowed_regions = "allowed_regions of lab_service_plan" 
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
| **var.name** | string | True | The name of the Lab Service Plan. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Lab Service Plan should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region where the Lab Service Plan should exist. Changing this forces a new resource to be created. | 
| **var.allowed_regions** | string | True | The allowed regions for the lab creator to use when creating labs using this Lab Service Plan. The allowed region's count must be between `1` and `28`. | 
| **var.default_auto_shutdown** | block | False | A `default_auto_shutdown` block. | | `default_auto_shutdown` block structure: || 
|   disconnect_delay (string): The amount of time a VM will stay running after a user disconnects if this behavior is enabled. This value must be formatted as an ISO 8601 string. ||
|   idle_delay (string): The amount of time a VM will idle before it is shutdown if this behavior is enabled. This value must be formatted as an ISO 8601 string. ||
|   no_connect_delay (string): The amount of time a VM will stay running before it is shutdown if no connection is made and this behavior is enabled. This value must be formatted as an ISO 8601 string. ||
|   shutdown_on_idle (string): Will a VM get shutdown when it has idled for a period of time? Possible values are 'LowUsage' and 'UserAbsence'. ||

| **var.default_connection** | block | False | A `default_connection` block. | | `default_connection` block structure: || 
|   client_rdp_access (string): The enabled access level for Client Access over RDP. Possible values are 'Private' and 'Public'. ||
|   client_ssh_access (string): The enabled access level for Client Access over SSH. Possible values are 'Private' and 'Public'. ||
|   web_rdp_access (string): The enabled access level for Web Access over RDP. Possible values are 'Private' and 'Public'. ||
|   web_ssh_access (string): The enabled access level for Web Access over SSH. Possible values are 'Private' and 'Public'. ||

| **var.default_network_subnet_id** | string | False | The resource ID of the Subnet for the Lab Service Plan network profile. | 
| **var.shared_gallery_id** | string | False | The resource ID of the Shared Image Gallery attached to this Lab Service Plan. When saving a lab template virtual machine image it will be persisted in this gallery. The shared images from the gallery can be made available to use when creating new labs. | 
| **var.support** | block | False | A `support` block. | | `support` block structure: || 
|   email (string): The email address for the support contact. ||
|   instructions (string): The instructions for users of the Lab Service Plan. ||
|   phone (string): The phone number for the support contact. ||
|   url (string): The web address for users of the Lab Service Plan. ||

| **var.tags** | map | False | A mapping of tags which should be assigned to the Lab Service Plan. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Lab Service Plan. | 

Additionally, all variables are provided as outputs.
