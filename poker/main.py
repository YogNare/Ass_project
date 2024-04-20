def main():
    input_file = open("input.txt", "r", encoding="utf-8")
    output_file = open("output.img", "w", encoding="utf-8")
    out = "v2.0 raw\n00\n1b\n5b\n32\n48\n1b\n5b\n32\n4a\n"
    output_file.write(out)
    space = 0
    for line in input_file:
        
        for i in line:

            if i == ' ':
                space += 1
                continue
            elif space > 0:
                output_file.write(f"1b\n5b\n3{space}\n43\n")
                space = 0

            if i == '\n':
                continue

            if i == '┌':
                out = "e2\n94\n8c\n"
            elif i == '─':
                out = "e2\n94\n80\n"
            elif i == '┐':
                out = "e2\n94\n90\n"
            elif i == '│':
                out = "e2\n94\n82\n"
            elif i == '└':
                out = "e2\n94\n94\n"
            elif i == '┘':
                out = "e2\n94\n98\n"

            output_file.write(out)

        output_file.write(f"1b\n5b\n31\n47\n1b\n5b\n42\n")
    
    input_file.close()
    output_file.close()


if __name__ == "__main__":
    main()


# ┌──────┐
# │      │
# │      │
# │      │
# └──────┘