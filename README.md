**mito_sets**

  A visual representation for overlaps of different mitochondrial protein sets. Substitution for Venn diagrams, using UpSetR package. 

**Dataset**
  
  Dataset contains 1627 mitochonrial proteins and information wether they are marked as mitohcondrial in 5 different databases. Databases are: IMPI, Human Protein Atlas, Gene Ontology Consortium and MitoCarta. IMPI is divided into two sets, known and predicted mitohcondrial proteins. Data was pulled from http://mitominer.mrc-mbu.cam.ac.uk/
  
**Scripts**

  Project contains two scripts: 
    make_set.R <- converts the file dowmloaded from MitoMiner into a readable CSV file
    upset_mito.R <- plotiing the intersections with UpSetR package

**Using UpSet Web apllication**

  * The web application can be accessed from https://goo.gl/huJAJe
  * Loading a JSON file from Data folder of mito_sets project (mito_sets_info.json) allows interactive usage of UpSet tool
  
