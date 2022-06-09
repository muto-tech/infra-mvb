terraform {
  source = "git::git@github.com:terraform-aws-modules/terraform-aws-dynamodb-table.git?ref=v1.0.0"
}

include {
  path = find_in_parent_folders()
}

###########################################################
# View all available inputs for this module:
# https://registry.terraform.io/modules/terraform-aws-modules/dynamodb-table/aws/1.0.0?tab=inputs
###########################################################
inputs = {
  # List of nested attribute definitions. Only required for hash_key and range_key attributes. Each attribute has two properties: name - (Required) The name of the attribute, type - (Required) Attribute type, which must be a scalar type: S, N, or B for (S)tring, (N)umber or (B)inary data
  # type: list(map(string))
  attributes = [{"name": "id", "type": "N"}]

  # Controls how you are billed for read/write throughput and how you manage capacity. The valid values are PROVISIONED or PAY_PER_REQUEST
  # type: string
  billing_mode = "PROVISIONED"

  # The attribute to use as the hash (partition) key. Must also be defined as an attribute
  # type: string
  hash_key = "id"

  # Name of the DynamoDB table
  # type: string
  name = "famous-seal"

  # The number of read units for this table. If the billing_mode is PROVISIONED, this field should be greater than 0
  # type: number
  read_capacity = 5

  # The number of write units for this table. If the billing_mode is PROVISIONED, this field should be greater than 0
  # type: number
  write_capacity = 5

  
}
