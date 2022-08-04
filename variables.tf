variable "ami" {
  default = {
    ami1 : "ami-0022c770"
    "ami2" = "ami-0022f774911c1d690"
  }
  type    = map
}

variable "instance_type" {
  type = tuple([bool, map(string)])
  default = [true, {
    type1 = "m1.small"
    "type2"   = "t2.micro",
    type3 : "m1.medium"
  }]
}



variable "boolType" {
 type        = bool
 default     =  false
 description = "bool type"
}

variable "numberType" {
 type        = number
 default     =  0
 description = "number type"
}


variable "anyvar" {
	type = any
	default = [
		"volume1",
		"volume3", 
		"volume2"
	]
}

variable "imageset" {
	type = set(string)
	default = [
		"image 1",
		"image 2", 
		"image 3"
	]
}

variable "listType" {
 type        = list
  default     = [
	  	"t2.micro",
 		"m1.small"
           ]
 description = "Instance types for the EC2 instance"
}

variable "subnetTuple" {
 type = tuple([bool, bool, object({
   name = string
   env  = string,
   isAvailable = bool
 })
 ])
 default = [false, true,{
   name : "vpc-0ee8ceb17cfd9e53b"
   env  : "Dev",
   isAvailable : true
 }]
 description = "Subnet ID for network interface"
}

variable "mapvar" {
    default =               {
    	disc_info = {	
		size 	: 50 
	}
	tag_info : 	{
	  "name" : "cpgnic"
	  duration = 958,
	  count = 45
  }
    }
  type = map  (map(string))
  description = "mapppp type"
}

 
 
variable "objectVar" {
 default = {
   name = "Ec2 dev instance"
   env  = "Dev",
   isAvailable = true
 }
 type = object({
   name = string
   env  = string,
   isAvailable = bool
 })
 description = "Tags for the EC2 instance"
}
