##########################
# Security group with name
##########################
resource "aws_security_group" "sg" {

  ingress {
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 80
           to_port     = 80
           protocol    = "tcp"
           description = "http"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 443
           to_port     = 443
           protocol    = "tcp"
           description = "https"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 22
           to_port     = 22
           protocol    = "tcp"
           description = "ssh"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 23
           to_port     = 23
           protocol    = "tcp"
           description = "telnet"
        } 
         ingress {
          from_port   = 25
          to_port     = 25
          protocol    = "tcp"
          cidr_blocks  = ["0.0.0.0/0"]
          description = "SMTP"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 636
           to_port     = 636
           protocol    = "tcp"
           description = "LDAP"
        } 
        ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 9000
           to_port     = 9000
           protocol    = "tcp"
           description = "Hadoop"
        } 
        ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 0
           to_port     = 65535
           protocol    = "tcp"
           description = "Public"
        } 
        ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 3389
           to_port     = 3389
           protocol    = "rdp"
           description = "RDP"
        } 
        ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 27017
           to_port     = 27017
           protocol    = "tcp"
           description = "Mongo"
        } 
        ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 9200
           to_port     = 9200
           protocol    = "tcp"
           description = "ES"
        }
        ingress {
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 9300
           to_port     = 9300
           protocol    = "tcp"
           description = "ES9300"
        }  
         ingress {   
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 5432
           to_port     = 5432
           protocol    = "tcp"
           description = "Postgress"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 1521
           to_port     = 1521
           protocol    = "tcp"
           description = "Oracle"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 3306
           to_port     = 3306
           protocol    = "tcp"
           description = "MySQL"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 1434
           to_port     = 1434
           protocol    = "tcp"
           description = "MSSQLadmin"
        } 
        ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 1433
           to_port     = 1433
           protocol    = "tcp"
           description = "MSSQLadmin"
        } 
        ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 1434
           to_port     = 1434
           protocol    = "udp"
           description = "MSSQLbrowser"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 7001
           to_port     = 7001
           protocol    = "tcp"
           description = "Cassandra"
        }  
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 61621
           to_port     = 61621
           protocol    = "tcp"
           description = "cassandraops"
        } 
         ingress {
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 3020
           to_port     = 3020
           protocol    = "tcp"
           description = "CIFS"
        } 
         ingress {
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 4505
           to_port     = 4505
           protocol    = "tcp"
           description = "SSM"
        } 
  }
