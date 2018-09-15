import sys,string

def caesar(plainText, shift): 
  cipherText = ""
  for ch in plainText:
    if ch.isalpha():
      stayInAlphabet = ord(ch) + shift 
      if stayInAlphabet > ord('z'):
        stayInAlphabet -= 26
      finalLetter = chr(stayInAlphabet)
      cipherText += finalLetter
    else:
    	cipherText += ch
  return cipherText

print(caesar(open(sys.argv[1]).read().lower(),int(sys.argv[2])))