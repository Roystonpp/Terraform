#Defining the provider and region
provider "aws" {
  access_key = "your_access_key"
  secret_key = "your_secret_key"
  region     = "eu-west-1"
}

#Defining the ec2 instance/size of machine
#ami's may be different for each region
resource "aws_instance" "riri_example" {
  ami           = "ami-02a39bdb8e8ee056a"
  instance_type = "t2.micro"
}

#Creating an s3 bucket with versioning
resource "aws_s3_bucket" "riri_bucket" {
   bucket = "riri-test-bucket"
   acl    = "private"

   tags   =  {
        Name        = "Royston bucket"
        Environment = "Dev"
 }
   versioning {
        enabled = true
 }

}
