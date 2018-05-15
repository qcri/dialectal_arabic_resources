
# Dialectal Arabic Datasets
--------------


## About the data:
A datasets for four dialects, namely Egyptian (EGY), Levantine (LEV), Gulf (GLF), and Maghrebi (MGR) which are available at <http://alt.qcri.org/resources/da_resources/>.  Each dataset consists of a sets of 350 manually segmented and POS tagged tweets.

## Generate the splits
run the shell script generate_splits.sh with the dataset argument EGY, LEV, GLF or MGR.
	generate_splits.sh lev
this will generate a directory "lev" contains five splits. each split with train, dev and test source and target file.


## Reference:
Kareem Darwish, Hamdy Mubarak, Ahmed Abdelali, Mohamed Eldesouki, Younes Samih, Randah Alharbi, Mohammed Attia, Walid Magdy and Laura Kallmeyer (2018) Multi-Dialect Arabic POS Tagging: A CRF Approach. Proceedings of the Eleventh International Conference on Language Resources and Evaluation (LREC 2018), May 7-12, 2018. Miyazaki, Japan.
	

#### Version:
	Mon May 07, 2018.


### Contacts:
	
	Ahmed Abdelali < aabdelali @ hbku dot edu dot qa >
	Kareem Darwish < kdarwish @ hbku dot edu dot qa >
	Hamdy Mubarak  < hmubarak @ hbku dot edu dot qa >