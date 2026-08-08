module "ec2" {

  source = "/root/deleteafterpractice/tfb44/module/resource/ec2"

  amiid = "ami-035827357e3c7e810"

  insttype = "t3.micro"

  sg = "sg-0900552f2cde33080"

  kp = "key"

  apiterm = false

  ws_subnet = module.vpc.subnet_id

}

module "vpc" {

    source = "/root/deleteafterpractice/tfb44/module/resource/vpc"

    this_cidr =  "10.0.0.0/16"

    this_subcidr = "10.0.0.0/24"

}
