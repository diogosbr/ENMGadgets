% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BatchMaxent.R
\name{BatchMaxent}
\alias{BatchMaxent}
\title{BatchMaxent - A function to execute Maxent niche modeling algorithm 
for multiple projections and multiple species. (Noninteractive)}
\usage{
BatchMaxent(projpath = NA, InpFlName = NA, MNameSameAsSpecies = FALSE,
  arglist = NA)
}
\arguments{
\item{projpath}{- Project path where all the required files for model calibrations are stored. e.g. "c:/SpDist/Model"}

\item{InpFlName}{- Name of the input file containing SpeciesName (OccurrenceFileName), M_folderName}

\item{MNameSameAsSpecies}{- Logical variable, to designate, if the M_folderName is same as OccurrenceFileName or not.}

\item{arglist}{- List of arguments to be passed to Maxent for model fitting and prediction.}
}
\description{
Function BatchMaxent executes Maxent algorithm using dismo and it gives the flexibility of projecting the model to multiple projection
areas. This process is done iteratively if the species list contains more than on species. To run this function successfully specific
directory structure should be maintained.
}
\details{
In the projpath parameter, specify the path where the data is residing. MNameSameAsSpecies parameter is also required. This parameter
is set to TRUE when M_folderName in the Calibration folder is same as species name. And is set to FALSE when M_folderName is different than
species name. This scenario exists, when a single M_folderName can be used for multiple species for calibration. This in this case, specify
M_folderName in species list file. arglist parameter is a list of arguments to be passed to Maxent. See documentation of Maxent for more details.

See the description below for projpath directory structure. 
Within the project path directory, there should be one species list file in .csv format and 3 subfolders as mentioned below. 
Species list file should be passed as parameter in parameter named InpFlName. The structure of this species list file is 
SpeciesName, M_folderName. Species name is the name of the file which contains species occurrences and this occurrence
file should be stored in Occurrences folder. M_folderName is the name of the directory which contains the background environmental data
for model calibration. If M_folderName is same as SpeciesName, then set the parameter MNameSameAsSpecies to TRUE. In that case M_folderName
column in species list file can be ignored. The structure of the directory should be as given below.
1) Calibration - This folder should contain subfolders with name as specified in M_folder name in the species list file. These subfolders
must contain the background environmental data. 2)Occurrences - This folder should contain occurrence data for each species in separate file
with species name as mentioned in species list file. 3) Projections - This folder should contain the background environmental data for projections
and data should be stored in subfolders, so if one has to project it only to one area, still data should go in subfolder. Name of the subfolder
can be user choice.
Output will be stored in ModelOutput folder within project path. This ModelOutput folder will contain subfolders CaliOutput, which contains
output of model calibration, for each species there are 3 files, one is model prediction, standard deviation of the bootstrapped model, and 
variable contribution. Other subfolders are projection folders with 2 files per species, model prediction, and standard deviation of bootstrapped model
}
\examples{
\dontrun{
BatchMaxent()
}
}
