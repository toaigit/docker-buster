### Overview buster-docker 
This is a basic frame work for creating EC2 instance using terraform.  All you need is to update the vars.env file with appropriate values of your AWS accounts such as AMI, VPC, Security Group. 
* this EC2 also install docker engine so it ready for you to build docker images
* You will learn how to install docker engine on debian-buster.
* You also learn how to adding an user (passwordless) to be able to run docker
* vars.env - Update this file before running gen-vars.sh script.
* gen-vars.sh - It generates backend.tf, vars.tf, and userdata.sh files based on the values in the vars.env & template files.
* userdata.sh - This file is created by gen-vars.sh. It is for EC2 to execute after the EC2 is up.   
* main.templ - this is the main.tf terraform template file for EC2 with ASG. (used by gen-vars.sh)
* userdata.templ this is the userdata template for EC2 with ASG (used by gen-vars.sh)
* vars.tf - this file created by gen-vars.sh  You need to review this before run "terraform plan|apply"   
NOTEs:   
* Always run terraform plan and review the changes before running terraform apply.  Terraform apply may terminate the running instance and start a new instance with your changes.  
  
* Always store state file to remote storage (such as S3).  if you delete the state file, terraform doesn't know the current state of your EC2 instance, it will try to create a new instance.   

* You should not make change to the EC2 manually with CLI, or from console.  
* You should alway use tags for any aws resource you created.  This is for tracking purpose.
* gen-vars.sh requires gomplate.  To Install gomplate curl -o /usr/local/bin/gomplate -sSL https://github.com/hairyhenderson/gomplate/releases/download/v3.5.0/gomplate_linux-amd64; chmod 755 /usr/local/bin/gomplate

#  end   #
