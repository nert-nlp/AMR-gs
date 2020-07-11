import json

import stanza
from tqdm import tqdm


def main(input_file):
    # amr_file = r'C:\Users\austi\Desktop\Shared Task\mrp\2020\cf\training\amr.mrp'

    nlp = stanza.Pipeline('en', processors='tokenize,pos,lemma,ner')

    amrs = []
    with open(input_file, 'r', encoding='utf8') as f:
        lines = f.readlines()
        for line in tqdm(lines):
            amr = json.loads(line)
            sentence = amr['input']
            doc = nlp(sentence)
            tokens = []
            lemmas = []
            ner = []
            pos = []
            for sent in doc.sentences:
                for token in sent.tokens:
                    for word in token.words:
                        tokens.append(word.text)
                        lemmas.append(word.lemma)
                        pos.append(word.pos)
                        ner.append(token.ner)
            amr['lemmas'] = lemmas
            amr['pos'] = pos
            amr['tokens'] = tokens
            amr['ner'] = ner
            amrs.append(amr)

    output_file = input_file.replace('.mrp','.features.mrp')
    with open(output_file, 'w+', encoding='utf8') as f:
        for amr in amrs:
            line = json.dumps(amr)+'\n'
            f.write(line)

    print()

if __name__=='__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('input', type=str)
    args = parser.parse_args()
    main(args.input)
