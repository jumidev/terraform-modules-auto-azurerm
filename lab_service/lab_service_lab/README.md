# azurerm_lab_service_lab

Manages a Lab Service Lab.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Lab Service Lab. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Lab Service Lab should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region where the Lab Service Lab should exist. Changing this forces a new resource to be created. | 
| **var.security** | block | True | A `security` block. | 
| `security` block structure: || 
|   open_access_enabled (bool): (REQUIRED) Is open access enabled to allow any user or only specified users to register to a Lab Service Lab? ||
| **var.title** | string | True | The title of the Lab Service Lab. | 
| **var.virtual_machine** | block | True | A `virtual_machine` block. | 
| `virtual_machine` block structure: || 
|   admin_user (block): (REQUIRED) An 'admin_user' block. ||
|   image_reference (block): (REQUIRED) An 'image_reference' block. ||
|   sku (block): (REQUIRED) A 'sku' block. ||
|   additional_capability_gpu_drivers_installed (bool): Is flagged to pre-install dedicated GPU drivers? Defaults to 'false'. Changing this forces a new resource to be created. ||
|   create_option (string): The create option to indicate what Lab Service Lab VMs are created from. Possible values are 'Image' and 'TemplateVM'. Defaults to 'Image'. Changing this forces a new resource to be created. ||
|   non_admin_user (block): A 'non_admin_user' block. ||
|   shared_password_enabled (bool): Is the shared password enabled with the same password for all user VMs? Defaults to 'false'. Changing this forces a new resource to be created. ||
|   usage_quota (string): The initial quota allocated to each Lab Service Lab user. Defaults to 'PT0S'. This value must be formatted as an ISO 8601 string. ||
| **var.auto_shutdown** | block | False | An `auto_shutdown` block. | 
| `auto_shutdown` block structure: || 
|   disconnect_delay (string): The amount of time a VM will stay running after a user disconnects if this behavior is enabled. This value must be formatted as an ISO 8601 string. ||
|   idle_delay (string): The amount of time a VM will idle before it is shutdown if this behavior is enabled. This value must be formatted as an ISO 8601 string. ||
|   no_connect_delay (string): The amount of time a VM will stay running before it is shutdown if no connection is made and this behavior is enabled. This value must be formatted as an ISO 8601 string. ||
|   shutdown_on_idle (string): A VM will get shutdown when it has idled for a period of time. Possible values are 'LowUsage' and 'UserAbsence'. ||
| **var.connection_setting** | block | False | A `connection_setting` block. | 
| `connection_setting` block structure: || 
|   client_rdp_access (string): The enabled access level for Client Access over RDP. Possible value is 'Public'. ||
|   client_ssh_access (string): The enabled access level for Client Access over SSH. Possible value is 'Public'. ||
| **var.description** | string | False | The description of the Lab Service Lab. | 
| **var.lab_plan_id** | string | False | The resource ID of the Lab Plan that is used during resource creation to provide defaults and acts as a permission container when creating a Lab Service Lab via `labs.azure.com`. | 
| **var.network** | block | False | A `network` block. | 
| `network` block structure: || 
|   subnet_id (string): The resource ID of the Subnet for the network profile of the Lab Service Lab. ||
| **var.roster** | block | False | A `roster` block. | 
| `roster` block structure: || 
|   active_directory_group_id (string): The AAD group ID which this Lab Service Lab roster is populated from. ||
|   lms_instance (string): The base URI identifying the lms instance. ||
|   lti_client_id (string): The unique id of the Azure Lab Service tool in the lms. ||
|   lti_context_id (string): The unique context identifier for the Lab Service Lab in the lms. ||
|   lti_roster_endpoint (string): The URI of the names and roles service endpoint on the lms for the class attached to this Lab Service Lab. ||
| **var.tags** | map | False | A mapping of tags which should be assigned to the Lab Service Lab. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Lab Service Lab. | 
| **security** | block | No  | A `security` block. | 
| **network** | block | No  | A `network` block. | 
| **registration_code** | string | No  | The registration code for the Lab Service Lab. | 
| **load_balancer_id** | string | No  | The resource ID of the Load Balancer for the network profile of the Lab Service Lab. | 
| **public_ip_id** | string | No  | The resource ID of the Public IP for the network profile of the Lab Service Lab. | 

Additionally, all variables are provided as outputs.
