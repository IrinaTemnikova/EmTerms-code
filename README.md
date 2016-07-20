# EmTerms-code
The code used to extract crisis terms (CRF method)

If you use this code, please cite:

Irina Temnikova, Carlos Castillo, and Sarah Vieweg (2015). EMTerms 1.0: A Terminological Resource for Crisis Tweets. In Proceedings of 12th International Conference on Information Systems for Crisis Response and Management (ISCRAM 2015), Kristiansand, Norway.

The terms are collected from tweets, after manual annotation of the emergency-categories-related terms. We use CMU ARK Twitter Part-of-Speech Tagger v0.3 (downloadable from: http://www.ark.cs.cmu.edu/TweetNLP/). All the files mentioned in the examples are uploaded here.

Usage:

Train.sh produces a Model

the input file must be a text file, one word per line, with 0 or 1 associated. 1 if the word is part of a term. The input files are produced via manual annotation of terms in the text.

bash train.sh — to see the usage

Usage: train.sh input_training_data output_model

input_training_data — taken from Dropbox/TermResource-terms-collections/ArkNLP tweets tokenization/All ArkNLP tokeniser output/tokenised files/One-Training-File-Per-Category/ 

output_model: put a name to an output file to be generated, “Model-”+original name -“train” + “csv”

Example: bash train.sh C02.Food-train.csv Model-C02.Food.mod

How to use test.sh:

bash test.sh — to see the usage

Usage: test.sh input_model input_data output_data

input model: one of the output files of train.sh

input_data: the tweets from All 30 crises: “All-collections-Alexandra-to-label-samples-kw-Tweets-Only-34-crises.csv”

output_data: put a name to an output file “Model-Number-Name-” - “train.mod” + “.test”

Example: bash test.sh Model-C02.Food.mod All-collections-Alexandra-to-label-samples-kw-Tweets-Only-34-crises.csv Model-C02.Food.test 
