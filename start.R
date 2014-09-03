install.packages('rJava', repos='http://cran.r-project.org')
install.packages('Rserve', repos='http://cran.r-project.org')
require('Rserve')
run.Rserve(debug = TRUE, 6311, args = NULL, config.file = "Rserv.conf")
