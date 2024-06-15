terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.51.1"
    }
  }

  backend "s3" {
    bucket = "pspkdevops-terraform-remote-state"    #bucketname created in aws
    key    = "workspaces"     #key we can give any name
    region = "us-east-1"
    dynamodb_table = "pspkdevops-terraform-lock"    # Dynamo db table name in aws
  }

}
# to provide authentication.
provider "aws" {
  region = "us-east-1"
}

# terraform command to know the workspaces list:
# terraform workspace list

# to know the terraform workspace allowed commands
# $ terraform workspace
# Usage: terraform [global options] workspace

#   new, list, show, select and delete Terraform workspaces.

# Subcommands:
#     delete    Delete a workspace
#     list      List Workspaces
#     new       Create a new workspace
#     select    Select a workspace
#     show      Show the name of the current workspace

# command to create new workspace
# $ terraform workspace new dev
# $ terraform workspace new prod

# command to select specific workspace:
# $ terraform workspace select dev





