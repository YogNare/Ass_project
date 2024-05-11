def main():
  main_s = ""
  with open("input1.txt", "r") as s:
    for i in s:
      main_s += i

  main_s = main_s[10:].replace("0x", "").replace(",", "")
  print(f"00 {main_s}")
  pass

if __name__ == "__main__":
  main()
