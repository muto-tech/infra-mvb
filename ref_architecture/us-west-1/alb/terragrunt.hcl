terraform {
  source = "git::git@github.com:terraform-aws-modules/terraform-aws-alb.git?ref=v6.0.0"
}

include {
  path = find_in_parent_folders()
}

###########################################################
# View all available inputs for this module:
# https://registry.terraform.io/modules/terraform-aws-modules/alb/aws/6.0.0?tab=inputs
###########################################################
inputs = {
  # The resource name and Name tag of the load balancer.
  # type: string
  name = "poetic-ghost"

  
}
