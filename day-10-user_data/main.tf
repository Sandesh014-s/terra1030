provider "aws" {
  
}
resource "aws_instance" "css-test-user-data" {
    ami = "ami-0f88e80871fd81e91"
    instance_type = "t2.micro"
    user_data= file("test.sh")
    tags = {
      Name = "css"
    }
}
