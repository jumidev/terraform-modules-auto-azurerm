# azurerm_lab_service_lab

Manages a Lab Service Lab.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "lab_service/lab_service_lab" 
}

inputs = {
   name = "name of lab_service_lab" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   security = {
      example_security = {
         open_access_enabled = "..."   
      }
  
   }
 
   title = "title of lab_service_lab" 
   virtual_machine = {
      example_virtual_machine = {
         admin_user = "..."   
         image_reference = "..."   
         sku = "..."   
      }
  
   }
 
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
| **name** | string |  The name which should be used for this Lab Service Lab. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Lab Service Lab should exist. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure Region where the Lab Service Lab should exist. Changing this forces a new resource to be created. | 
| **security** | [block](#security-block-structure) |  A `security` block. | 
| **title** | string |  The title of the Lab Service Lab. | 
| **virtual_machine** | [block](#virtual_machine-block-structure) |  A `virtual_machine` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **auto_shutdown** | [block](#auto_shutdown-block-structure) |  An `auto_shutdown` block. | 
| **connection_setting** | [block](#connection_setting-block-structure) |  A `connection_setting` block. | 
| **description** | string |  The description of the Lab Service Lab. | 
| **lab_plan_id** | string |  The resource ID of the Lab Plan that is used during resource creation to provide defaults and acts as a permission container when creating a Lab Service Lab via `labs.azure.com`. | 
| **network** | [block](#network-block-structure) |  A `network` block. | 
| **roster** | [block](#roster-block-structure) |  A `roster` block. | 
| **tags** | map |  A mapping of tags which should be assigned to the Lab Service Lab. | 

### `auto_shutdown` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `disconnect_delay` | string | No | - | The amount of time a VM will stay running after a user disconnects if this behavior is enabled. This value must be formatted as an ISO 8601 string. |
| `idle_delay` | string | No | - | The amount of time a VM will idle before it is shutdown if this behavior is enabled. This value must be formatted as an ISO 8601 string. |
| `no_connect_delay` | string | No | - | The amount of time a VM will stay running before it is shutdown if no connection is made and this behavior is enabled. This value must be formatted as an ISO 8601 string. |
| `shutdown_on_idle` | string | No | - | A VM will get shutdown when it has idled for a period of time. Possible values are 'LowUsage' and 'UserAbsence'. |

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `capacity` | string | Yes | - | The capacity for the SKU. Possible values are between '0' and '400'. |

### `virtual_machine` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `admin_user` | [block](#virtual_machine-block-structure) | Yes | - | An 'admin_user' block. |
| `image_reference` | [block](#virtual_machine-block-structure) | Yes | - | An 'image_reference' block. |
| `sku` | [block](#virtual_machine-block-structure) | Yes | - | A 'sku' block. |
| `additional_capability_gpu_drivers_installed` | bool | No | False | Is flagged to pre-install dedicated GPU drivers? Defaults to 'false'. Changing this forces a new resource to be created. |
| `create_option` | string | No | Image | The create option to indicate what Lab Service Lab VMs are created from. Possible values are 'Image' and 'TemplateVM'. Defaults to 'Image'. Changing this forces a new resource to be created. |
| `non_admin_user` | [block](#virtual_machine-block-structure) | No | - | A 'non_admin_user' block. |
| `shared_password_enabled` | bool | No | False | Is the shared password enabled with the same password for all user VMs? Defaults to 'false'. Changing this forces a new resource to be created. |
| `usage_quota` | string | No | PT0S | The initial quota allocated to each Lab Service Lab user. Defaults to 'PT0S'. This value must be formatted as an ISO 8601 string. |

### `roster` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `active_directory_group_id` | string | No | - | The AAD group ID which this Lab Service Lab roster is populated from. |
| `lms_instance` | string | No | - | The base URI identifying the lms instance. |
| `lti_client_id` | string | No | - | The unique id of the Azure Lab Service tool in the lms. |
| `lti_context_id` | string | No | - | The unique context identifier for the Lab Service Lab in the lms. |
| `lti_roster_endpoint` | string | No | - | The URI of the names and roles service endpoint on the lms for the class attached to this Lab Service Lab. |

### `connection_setting` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_rdp_access` | string | No | - | The enabled access level for Client Access over RDP. Possible value is 'Public'. |
| `client_ssh_access` | string | No | - | The enabled access level for Client Access over SSH. Possible value is 'Public'. |

### `security` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `open_access_enabled` | bool | Yes | - | Is open access enabled to allow any user or only specified users to register to a Lab Service Lab? |

### `admin_user` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `username` | string | Yes | - | The username to use when signing in to Lab Service Lab VMs. Changing this forces a new resource to be created. |
| `password` | string | Yes | - | The password for the Lab user. Changing this forces a new resource to be created. |

### `network` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | No | - | The resource ID of the Subnet for the network profile of the Lab Service Lab. |

### `non_admin_user` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `username` | string | Yes | - | The username to use when signing in to Lab Service Lab VMs. |
| `password` | string | Yes | - | The password for the user. |

### `image_reference` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `offer` | string | No | - | The image offer if applicable. Changing this forces a new resource to be created. |
| `publisher` | string | No | - | The image publisher. Changing this forces a new resource to be created. |
| `sku` | string | No | - | The image SKU. Changing this forces a new resource to be created. |
| `version` | string | No | - | The image version specified on creation. Changing this forces a new resource to be created. |



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
