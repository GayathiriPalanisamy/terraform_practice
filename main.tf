resource "local_file" "pet"{
	filename = var.filename
	content = "My favourite pet is ${random_pet.my-pet.id}"
	file_permission = "0700"	
}

resource "random_pet" "my-pet"{
	prefix = var.prefix
	separator = var.separator
	length = var.length	
}
