# azurerm_automation_software_update_configuration

Manages an Automation Software Update Configuraion.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Automation. Changing this forces a new Automation to be created. | 
| **var.automation_account_id** | string | True | -  |  The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created. | 
| **var.duration** | string | False | `PT2H`  |  Maximum time allowed for the software update configuration run. using format `PT[n]H[n]M[n]S` as per ISO8601. Defaults to `PT2H`. | 
| **var.linux** | block | False | -  |  A `linux` block. | 
| **var.windows** | block | False | -  |  A `windows` block. | 
| **var.virtual_machine_ids** | string | False | -  |  Specifies a list of Azure Resource IDs of azure virtual machines. | 
| **var.non_azure_computer_names** | string | False | -  |  Specifies a list of names of non-Azure machines for the software update configuration. | 
| **var.target** | block | False | -  |  A `target` blocks. | 
| **var.post_task** | block | False | -  |  A `post_task` blocks. | 
| **var.pre_task** | block | False | -  |  A `pre_task` blocks. | 
| **var.schedule** | block | True | -  |  A `schedule` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **automation_account_id** | string  | - | 
| **duration** | string  | - | 
| **linux** | block  | - | 
| **windows** | block  | - | 
| **virtual_machine_ids** | string  | - | 
| **non_azure_computer_names** | string  | - | 
| **target** | block  | - | 
| **post_task** | block  | - | 
| **pre_task** | block  | - | 
| **schedule** | block  | - | 
| **id** | string  | The ID of the Automation Software Update Configuration. | 
| **error_code** | string  | The Error code when failed. | 
| **error_meesage** | string  | The Error message indicating why the operation failed. | 