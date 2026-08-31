words = open("words.txt", encoding="utf-8").read().split()
unique_set = set()
for word in words:
    unique_set.add(word)
unique = list(unique_set)
print("count=", len(unique))
