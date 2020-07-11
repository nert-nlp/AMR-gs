import json

from amr import AMR


def main():
    amr_file = r'C:\Users\austi\Desktop\Shared Task\mrp\2020\cf\training\amr.mrp'
    drg_file = r'C:\Users\austi\Desktop\Shared Task\mrp\2020\cf\training\drg.mrp'
    eds_file = r'C:\Users\austi\Desktop\Shared Task\mrp\2020\cf\training\eds.mrp'
    ptg_file = r'C:\Users\austi\Desktop\Shared Task\mrp\2020\cf\training\ptg.mrp'
    ucca_file = r'C:\Users\austi\Desktop\Shared Task\mrp\2020\cf\training\ucca.mrp'

    amrs = []
    with open(amr_file, 'r', encoding='utf8') as f:
        for line in f:
            amr = json.loads(line)
            amrs.append(amr)

    drgs = []
    with open(drg_file, 'r', encoding='utf8') as f:
        for line in f:
            drg = json.loads(line)
            drgs.append(drg)

    edss = []
    with open(eds_file, 'r', encoding='utf8') as f:
        for line in f:
            eds = json.loads(line)
            edss.append(eds)

    ptgs = []
    with open(ptg_file, 'r', encoding='utf8') as f:
        for line in f:
            ptg = json.loads(line)
            ptgs.append(ptg)

    uccas = []
    with open(ucca_file, 'r', encoding='utf8') as f:
        for line in f:
            ucca = json.loads(line)
            uccas.append(ucca)

    print()

if __name__=='__main__':
    main()