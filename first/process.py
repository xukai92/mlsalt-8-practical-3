fn_list = ['outA', 'outB']
for fn in fn_list:
    lines = []
    fin = open(fn, 'r')
    for line in fin:
        lines.append(line)
    fin.close()

    fout = open(fn, 'w')
    for line in lines:
        fout.write(line.replace('<s> ', '').replace(' </s>', ''))
    fout.close()
