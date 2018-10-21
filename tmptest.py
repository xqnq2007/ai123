from markdown import markdown
test = '''
... # This is a test header
... ## The second line
... table|column
... ---- |----
... python|2.7.x
... django|1.9.x
... ## Is this work?
 '''
test='\n#This is a test header\n##The second line\ntable|column\n----|----\npython|2.7.x\ndjango|1.9.x\n##Is this work?\n'
print(test)
markt=markdown(test)
print(markt)