
# Dialectal Arabic Datasets
--------------


## About the data:
A datasets for four dialects, namely Egyptian (EGY), Levantine (LEV), Gulf (GLF), and Maghrebi (MGR) which are available at <http://alt.qcri.org/resources/da_resources/>.  Each dataset consists of a sets of 350 manually segmented and POS tagged tweets.

## Generate the splits
run the shell script generate_splits.sh with the dataset argument EGY, LEV, GLF or MGR (lower cased).

```bash
# call generate_splits.sh script with the right argument
generate_splits.sh lev
```

this will generate a directory "lev" contains five splits. each split with train, dev and test source and target file.


## Reference:
Please cite [[1]](http://www.lrec-conf.org/proceedings/lrec2018/pdf/562.pdf) if you found the resources in this repository useful.

[1] Kareem Darwish, Hamdy Mubarak, Ahmed Abdelali, Mohamed Eldesouki, Younes Samih, Randah Alharbi, Mohammed Attia, Walid Magdy and Laura Kallmeyer (2018) Multi-Dialect Arabic POS Tagging: A CRF Approach. Proceedings of the Eleventh International Conference on Language Resources and Evaluation (LREC 2018), May 7-12, 2018. Miyazaki, Japan.

	@InProceedings{DARWISH18.562,
	  author = {Kareem Darwish ,Hamdy Mubarak ,Ahmed Abdelali ,Mohamed Eldesouki ,Younes Samih ,Randah Alharbi ,Mohammed Attia ,Walid Magdy and Laura Kallmeyer},
	  title = {Multi-Dialect Arabic POS Tagging: A CRF Approach},
	  booktitle = {Proceedings of the Eleventh International Conference on Language Resources and Evaluation (LREC 2018)},
	  year = {2018},
	  month = {may},
	  date = {7-12},
	  location = {Miyazaki, Japan},
	  editor = {Nicoletta Calzolari (Conference chair) and Khalid Choukri and Christopher Cieri and Thierry Declerck and Sara Goggi and Koiti Hasida and Hitoshi Isahara and Bente Maegaard and Joseph Mariani and Hélène Mazo and Asuncion Moreno and Jan Odijk and Stelios Piperidis and Takenobu Tokunaga},
	  publisher = {European Language Resources Association (ELRA)},
	  address = {Paris, France},
	  isbn = {979-10-95546-00-9},
	  language = {english}
	  }

#### Version:
Mon May 07, 2018.


### Contacts:
	
* Ahmed Abdelali < aabdelali @ hbku dot edu dot qa > 
* Kareem Darwish < kdarwish @ hbku dot edu dot qa >
* Hamdy Mubarak  < hmubarak @ hbku dot edu dot qa >