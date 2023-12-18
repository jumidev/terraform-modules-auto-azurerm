# REQUIRED VARIABLES

variable "storage_account_id" {
  description = "(REQUIRED) Specifies the id of the storage account to apply the management policy to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "rule" {
  description = "A 'rule' block."
  type        = map(any)
  default     = null
}
#
# rule block structure:
#   name (string)       : (REQUIRED) The name of the rule. Rule name is case-sensitive. It must be unique within a policy.
#   enabled (bool)      : (REQUIRED) Boolean to specify whether the rule is enabled.
#   filters (block)     : (REQUIRED) A 'filters' block.
#   actions (block)     : (REQUIRED) An 'actions' block.
#
# match_blob_index_tag block structure:
#   name (string)                       : (REQUIRED) The filter tag name used for tag based filtering for blob objects.
#   operation (string)                  : The comparison operator which is used for object comparison and filtering. Possible value is '=='. Defaults to '=='.
#   value (string)                      : (REQUIRED) The filter tag value used for tag based filtering for blob objects.
#
# actions block structure:
#   base_blob (block)      : A 'base_blob' block.
#   snapshot (block)       : A 'snapshot' block.
#   version (block)        : A 'version' block.
#
# version block structure                                                :
#   change_tier_to_archive_after_days_since_creation (number)              : The age in days after creation to tier blob version to archive storage. Must be between 0 and 99999. Defaults to '-1'.
#   tier_to_archive_after_days_since_last_tier_change_greater_than (number): The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to '-1'.
#   change_tier_to_cool_after_days_since_creation (number)                 : The age in days creation create to tier blob version to cool storage. Must be between 0 and 99999. Defaults to '-1'.
#   tier_to_cold_after_days_since_creation_greater_than (number)           : The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between '0' and '99999'. Defaults to '-1'.
#   delete_after_days_since_creation (number)                              : The age in days after creation to delete the blob version. Must be between 0 and 99999. Defaults to '-1'.
#
# snapshot block structure                                               :
#   change_tier_to_archive_after_days_since_creation (number)              : The age in days after creation to tier blob snapshot to archive storage. Must be between 0 and 99999. Defaults to '-1'.
#   tier_to_archive_after_days_since_last_tier_change_greater_than (number): The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to '-1'.
#   change_tier_to_cool_after_days_since_creation (number)                 : The age in days after creation to tier blob snapshot to cool storage. Must be between 0 and 99999. Defaults to '-1'.
#   tier_to_cold_after_days_since_creation_greater_than (number)           : The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between '0' and '99999'. Defaults to '-1'.
#   delete_after_days_since_creation_greater_than (number)                 : The age in days after creation to delete the blob snapshot. Must be between 0 and 99999. Defaults to '-1'.
#
# base_blob block structure                                              :
#   tier_to_cool_after_days_since_modification_greater_than (number)       : The age in days after last modification to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between 0 and 99999. Defaults to '-1'.
#   tier_to_cool_after_days_since_last_access_time_greater_than (number)   : The age in days after last access time to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between '0' and '99999'. Defaults to '-1'.
#   tier_to_cool_after_days_since_creation_greater_than (number)           : The age in days after creation to cool storage. Supports blob currently at Hot tier. Must be between '0' and '99999'. Defaults to '-1'.
#   auto_tier_to_hot_from_cool_enabled (bool)                              : Whether a blob should automatically be tiered from cool back to hot if it's accessed again after being tiered to cool. Defaults to 'false'.
#   tier_to_archive_after_days_since_modification_greater_than (number)    : The age in days after last modification to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between 0 and 99999. Defaults to '-1'.
#   tier_to_archive_after_days_since_last_access_time_greater_than (number): The age in days after last access time to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between '0' and'99999'. Defaults to '-1'.
#   tier_to_archive_after_days_since_creation_greater_than (number)        : The age in days after creation to archive storage. Supports blob currently at Hot or Cool tier. Must be between '0' and'99999'. Defaults to '-1'.
#   tier_to_archive_after_days_since_last_tier_change_greater_than (number): The age in days after last tier change to the blobs to skip to be archved. Must be between 0 and 99999. Defaults to '-1'.
#   tier_to_cold_after_days_since_modification_greater_than (number)       : The age in days after last modification to tier blobs to cold storage. Supports blob currently at Hot tier. Must be between 0 and 99999. Defaults to '-1'.
#   tier_to_cold_after_days_since_last_access_time_greater_than (number)   : The age in days after last access time to tier blobs to cold storage. Supports blob currently at Hot tier. Must be between '0' and '99999'. Defaults to '-1'.
#   tier_to_cold_after_days_since_creation_greater_than (number)           : The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between '0' and '99999'. Defaults to '-1'.
#   delete_after_days_since_modification_greater_than (number)             : The age in days after last modification to delete the blob. Must be between 0 and 99999. Defaults to '-1'.
#   delete_after_days_since_last_access_time_greater_than (number)         : The age in days after last access time to delete the blob. Must be between '0' and '99999'. Defaults to '-1'.
#   delete_after_days_since_creation_greater_than (number)                 : The age in days after creation to delete the blob. Must be between '0' and '99999'. Defaults to '-1'.
#
# filters block structure     :
#   blob_types (string)         : (REQUIRED) An array of predefined values. Valid options are 'blockBlob' and 'appendBlob'.
#   prefix_match (string)       : An array of strings for prefixes to be matched.
#   match_blob_index_tag (block): A 'match_blob_index_tag' block. The block defines the blob index tag based filtering for blob objects.


