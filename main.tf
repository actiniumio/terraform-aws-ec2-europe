resource "aws_instance" "my-test-instance" {
  ami = "ami-0ee503641c4f61ba6"
  instance_type   = "t2.micro"

  tags {
    Name = "test-instance"
  }
}
