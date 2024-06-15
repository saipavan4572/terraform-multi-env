variable "instance_type" {
    default = {
        dev = "t3.micro"        #name of the workspace created should be same as variable name here- dev
        prod = "t3.small"       #name of the workspace created should be same as variable name here- prod
    }
}