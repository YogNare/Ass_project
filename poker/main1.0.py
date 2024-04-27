def main():
    count_space = 0
    with open("input.txt", "r", encoding="utf-8") as input_file:
        with open("output.img", "w", encoding="utf-8") as output_file:
            output_file.write(f"v2.0 raw, 00, 1b, 5b, 32, 48, 1b, 5b, 32, 4a, ")
            for line in input_file:
                for i in line:
                    if i == ' ':
                        count_space += 1
                        continue

                    if count_space > 0:
                        if count_space > 9:
                            output_file.write(f"1b, 5b, 3{count_space//10}, 3{count_space%10}, 43, ")
                        else:
                            output_file.write(f"1b, 5b, 3{count_space}, 43, ")
                        count_space = 0

                    if i == ', ':
                        output_file.write(f"1b, 5b, 42, 1b, 5b, 0d, ")
                        continue

                    symbol = i.encode()
                    if len(i) == len(symbol):
                        output_file.write(f"{str(hex(ord(i)))[2:]}, ")
                    else:
                        symbol = str(symbol).replace('\\x', ', ')[3:-1]
                        output_file.write(f"{symbol}, ")


if __name__ == "__main__":
    main()
