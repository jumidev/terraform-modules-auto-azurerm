# REQUIRED VARIABLES

variable "source_storage_account_id" {
  description = "(REQUIRED) The ID of the source storage account. Changing this forces a new Storage Object Replication to be created."
  type        = string

}
variable "destination_storage_account_id" {
  description = "(REQUIRED) The ID of the destination storage account. Changing this forces a new Storage Object Replication to be created."
  type        = string

}
variable "rules" {
  description = "(REQUIRED) One or more 'rules' blocks."
  type        = map(map(any))
}
#
# rules block structure                :
#   source_container_name (string)       : (REQUIRED) The source storage container name. Changing this forces a new Storage Object Replication to be created.
#   destination_container_name (string)  : (REQUIRED) The destination storage container name. Changing this forces a new Storage Object Replication to be created.
#   copy_blobs_created_after (string)    : The time after which the Block Blobs created will be copies to the destination. Possible values are 'OnlyNewObjects', 'Everything' and time in RFC3339 format: '2006-01-02T15:04:00Z'. Defaults to 'OnlyNewObjects'.
#   filter_out_blobs_with_prefix (string): Specifies a list of filters prefixes, the blobs whose names begin with which will be replicated.


