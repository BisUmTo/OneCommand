black_list = ['minecraft:air']

with open('items.txt', 'r') as items:
    with open('generated.mcfunction', 'w') as f:
        n = 0
        for i in items:
            if i not in black_list:
                f.write(f'execute if score RESULT rng matches {n} run give @s {i}')
                n += 1
        f.close()
