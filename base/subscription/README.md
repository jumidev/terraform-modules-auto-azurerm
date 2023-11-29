# azurerm_subscription

Manages an Alias for a Subscription - which adds an Alias to an existing Subscription, allowing it to be managed in Terraform - or create a new Subscription with a new Alias.~> **NOTE:** Destroying a Subscription controlled by this resource will place the Subscription into a cancelled state. It is possible to re-activate a subscription within 90-days of cancellation, after which time the Subscription is irrevocably deleted, and the Subscription ID cannot be re-used. For further information see [here](https://docs.microsoft.com/azure/cost-management-billing/manage/cancel-azure-subscription#what-happens-after-subscription-cancellation). Users can optionally delete a Subscription once 72 hours have passed, however, this functionality is not suitable for Terraform. A `Deleted` subscription cannot be reactivated.~> **NOTE:** It is not possible to destroy (cancel) a subscription if it contains resources. If resources are present that are not managed by Terraform then these will need to be removed before the Subscription can be destroyed.~> **Note:** This resource will automatically attempt to cancel a subscription when it is deleted. This behavior can be disabled in the provider `features` block by setting the `prevent_cancellation_on_destroy` field to `true` within the `subscription` block.~> **NOTE:** Azure supports Multiple Aliases per Subscription, however, to reliably manage this resource in Terraform only a single Alias is supported.~> **NOTE:** When using this resource across tenants the `client_id` and `tenant_id` of the `provider` config block should be for the home tenant details for the SPN / User or a permissions error will likely be encountered. See [the official documentation](https://learn.microsoft.com/en-us/azure/cost-management-billing/manage/programmatically-create-subscription) for more details.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.subscription_name** | string | True | -  |  The Name of the Subscription. This is the Display Name in the portal. | 
| **var.alias** | string | False | -  |  The Alias name for the subscription. Terraform will generate a new GUID if this is not supplied. Changing this forces a new Subscription to be created. | 
| **var.billing_scope_id** | string | False | -  |  The Azure Billing Scope ID. Can be a Microsoft Customer Account Billing Scope ID, a Microsoft Partner Account Billing Scope ID or an Enrollment Billing Scope ID. | 
| **var.subscription_id** | string | False | -  |  The ID of the Subscription. Changing this forces a new Subscription to be created. | 
| **var.workload** | string | False | `Production`, `DevTest`  |  The workload type of the Subscription. Possible values are `Production` (default) and `DevTest`. Changing this forces a new Subscription to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the Subscription. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **subscription_name** | string  | - | 
| **alias** | string  | - | 
| **billing_scope_id** | string  | - | 
| **subscription_id** | string  | - | 
| **workload** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The Resource ID of the Alias. | 
| **tenant_id** | string  | The ID of the Tenant to which the subscription belongs. | 