variable "instance_Names" {
  type        = map
 #default     = {
  #  db-dev = "t2.samll"
   # backend.dev = "t2.micro"
    #frontend.dev = "t2.micro"
  #}
}

variable "environment"{
   # default = "dev"
}

variable "common_tags"{
    type = map
    default = {
        project = "Expense"
        terraform = "yes"
    }
}

variable "domain_name"{
    default = "devops-srinu.online"
}

variable "zone_id"{
    default = "Z064969924DPU6AXZRLV6"
}