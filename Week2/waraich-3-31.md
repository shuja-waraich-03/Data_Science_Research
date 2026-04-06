First Project:

This data project will require an IPUMS API key.

The goal is to produce a Jupyter notebook showing how to retrieve
historical population data via the python IPUMS API, import it as a
Pandas dataframe, download it to a file in CSV or related format,
and then produce a graphical summary such as a time series chart for
the data.

Specifically, I am interested in knowing populations for each of the
current counties in the United States at each census for which the
county has been in existence.  The data should be given one county per
row, with columns titled by census year and having a non-empty entry
for each census in which that county appears.

The data should be obtained from the IPUMS NHGIS data collection using
the API for IPUMS NHGIS.  The webpage for IPUMS NHGIS is here:

https://www.nhgis.org/

The webpage for the IPUMS API is here:

https://developer.ipums.org/docs/v2/apiprogram/

The jupyter notebook should show the python code for obtaining and
downloading this data from IPUMS and all other related code. 