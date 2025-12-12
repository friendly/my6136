# script to install needed lab packages for R Windows

#  Open this script in an RStudio editor window and press Run

#  Alternatively, just run the following line in the R console:
#  source("https://friendly.github.io/psy6136/psy6136/R/install-vcd-pkgs.R")
#   

install_if_needed <- function(pkg) {
  # Check if the package is already installed
  if (!requireNamespace(pkg, quietly = TRUE)) {
    # If not installed, install it from CRAN
    install.packages(pkg, dependencies = TRUE)
  }
}
# main packages for the VCD short course [ removed: "catspec" as archived]
vcdpkgs <-c("vcd", "vcdExtra", "ca", "car", "coin", "corrgram", "effects", 
            "gmodels", "gnm", "reshape", "catdata", "pscl")

# other useful packages
otherpkgs <-c("ade4", "candisc", "ggplot2", "heplots", "HH", "rms", "latticeExtra", 
              "lme4", "dplyr", "reshape", "rgl", "rmarkdown", "sem", "TeachingDemos",
              "tidyverse", "knitr", "psych", "lavaan", "tinytex" )

allpkgs <- union(vcdpkgs, otherpkgs)

# install the above, along with any dependencies
install.packages(allpkgs, dependencies=TRUE)

# update any recently modified packages
update.packages(ask='graphics')

# Load them (important for description to work well)
lapply(vcdpkgs, require, character.only = TRUE)

# Get titles using a loop or lapply
titles <- lapply(vcdpkgs, function(p) {
  desc <- packageDescription(p)
  return(desc[, "Title"])
})

titles_df <- data.frame(Package = vcdpkgs, titles)

# Convert the list to a named vector (optional but nice)
titles_vec <- unlist(titles)
names(titles_vec) <- pkgs
print(titles_vec)

desc <- sapply(my_packages, utils::packageDescription, fields = "Description", drop = TRUE)

desc <- sapply(vcdpkgs, 
               utils::packageDescription, 
               fields = c("Package", "Title"), drop = TRUE)
as.data.frame(desc)

