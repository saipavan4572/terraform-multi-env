# resource <resource-type> <resource-name>
resource "aws_instance" "expense" {

    ami = "ami-031d574cddc5bb371"   # this is the ami id for the devops-practice - RHEL9 AMI.
    vpc_security_group_ids = ["sg-0678bda45dd596a0b"]
    instance_type = lookup(var.instance_type, terraform.workspace)

}
