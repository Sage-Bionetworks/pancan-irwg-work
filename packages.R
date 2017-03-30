# make sure SSL CA cert can be recognized by R in conda env
if (!("CURL_CA_BUNDLE" %in% names(Sys.getenv()))) {
    Sys.setenv(CURL_CA_BUNDLE = file.path(Sys.getenv("CONDA_PREFIX"), 
                                          "ssl/cacert.pem"))
}

# install Synapse
if (!require(synapseClient)) {
    source("http://depot.sagebase.org/CRAN.R")
    pkgInstall("synapseClient")
    pkgInstall("Rsftp")
}

# install CRAN and Bioconductor packages
install.packages("feather")
install.packages("ggthemes")
install.packages("ggbeeswarm")
install.packages("gplots")
# BiocInstaller::biocLite(pkg_list, suppressUpdates = T, suppressAutoUpdate = T)

