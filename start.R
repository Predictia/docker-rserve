install.packages.if.absent <- function(name){
	if (!name %in% rownames(installed.packages())){
		install.packages(name, repos='http://cran.r-project.org')
	}
}
install.packages.if.absent('Rserve')
require('Rserve')
run.Rserve(debug = TRUE, 6311, args = NULL, config.file = "Rserv.conf")
