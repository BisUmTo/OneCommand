input_file = open("input.txt", "r")
raw_file = input_file.read()
lista = raw_file.split("\n")

index = 0
print("Starting conversion...")

while(index < len(lista)):
    name = lista[index].split("\t")[0]
    lvl = lista[index].split("\t")[1]
    print("Converting: " + name + ", " + lvl)
    
    output = name + "_lvl" + lvl + ".properties"
    output_file = open(output, "w+")
    output_txt = "type=item\nitems=enchanted_book\ntexture=" + name + "\nenchantments=" + name + "\nenchantmentLevels=" + str(lvl) + "\nweight=" + str(100-index)
    output_file.write(output_txt)
    output_file.close()
    index += 1
print("End of conversion")
