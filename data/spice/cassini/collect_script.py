import os                                                                                                                                 
folders = ['sclk', 'ck', 'spk', 'lsk', 'fk', 'ik', 'ek', 'spk']                                                                          
l = []                                                                                                                                       
for folder in folders:                                
    for f in os.listdir(folder):
        if (f[:2] != '._') and (f.split('.')[-1] != 'pdf') and (f != '.DS_Store') and (f.split('.')[-1] != 'txt'):                       
            l.append(folder+'/'+f)                                   
print l   
with open('collect.txt', 'w') as file:
    for name in l:
        file.write('"${OPENSPACE_DATA}/spice/cassini/' + name+'",\n')
