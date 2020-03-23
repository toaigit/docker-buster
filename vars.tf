variable  "SERVERNAME" {
  default = "testEC2"
}

variable  "CREATOR" {
  default = "Toai Vo"
}

variable  "REGION" {
  default = "us-west-2"
}

variable "ASG_NAME" {
   default = "testEC2"
  }

variable "LC_NAME" {
   default = "testEC2LC"
  }

variable "SUBNET1" {
   default = "subnet-251c4c53"
  }
variable "SUBNET2" {
   default = "subnet-31752a19"
  }
variable "SUBNET3" {
   default = "subnet-f5f560ad"
  }

variable "MIN_SIZE" {
   default = "1"
  }

variable "MAX_SIZE" {
   default = "1"
  }

variable "ASG_DESIRE" {
   default = "1"
  }

variable "HEALTH_CHECK_GRACE_PERIOD" {
   default = "300"
  }

variable "IMAGE_ID" {
   default = "ami-023b7a69b9328e1f9"
  }

variable "INSTANCE_TYPE" {
   default = "t2.micro"
  }

variable "KEY_NAME" {
   default = "toai-keypair"
  }

variable "SG" {
   default = "sg-01e9f6854817deb21"
  }

variable "VOLUME_TYPE" {
   default = "gp2"
  }

variable "VOLUME_SIZE" {
   default = "16"
  }

variable "IAMROLE" {
   default = "Toai-S3EC2Role"
  }

variable "DELETE_ON_TERMINATION" {
   default = "true"
  }
