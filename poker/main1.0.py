def main():
    count_space = 0
    with open("input.txt", "r", encoding="utf-8") as input_file:
        with open("output.img", "w", encoding="utf-8") as output_file:
            output_file.write(f"v2.0 raw\n00\n1b\n5b\n32\n48\n1b\n5b\n32\n4a\n")
            for line in input_file:
                for i in line:
                    if i == ' ':
                        count_space += 1
                        continue

                    if count_space > 0:
                        if count_space > 9:
                            output_file.write(f"1b\n5b\n3{count_space//10}\n3{count_space%10}\n43\n")
                        else:
                            output_file.write(f"1b\n5b\n3{count_space}\n43\n")
                        count_space = 0

                    if i == '\n':
                        output_file.write(f"1b\n5b\n42\n1b\n5b\n0d\n")
                        continue

                    symbol = i.encode()
                    if len(i) == len(symbol):
                        output_file.write(f"{str(hex(ord(i)))[2:]}\n")
                    else:
                        symbol = str(symbol).replace('\\x', '\n')[3:-1]
                        output_file.write(f"{symbol}\n")


if __name__ == "__main__":
    main()
