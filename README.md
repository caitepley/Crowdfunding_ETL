# Crowdfunding_ETL

The purpose of this project is to Extract, Transform, and Load data. We were given two .xlsx files titled 'contacts.xlxs' and 'crowdfunding.xlxs' containing data about people's contacts and information about crowdfunding campaigns respectively. This data was cleaned to produce four .csv files called 'campaign.csv','category.csv','contacts.csv','subcategory'.

The four .csv files were loaded into pgAdmin 4, where SQL is used to create tables with appropriate primary and foreign keys to represent the data from the four .csv files. 

## Note
If you run the Jupyter notebook more than once, you will need to delete all of the .csv files from previously running the code or else it will throw an error.

## To Run

Python and pgAdmin 4 need to be installed on your local machine. The Jupyter notebook (ETL_Mini_Projecct_AWimbley_DLong_CEpley.ipynb) needs to be ran first, either cell-by-cell or the whole file at once. Then the crowdfunding_db_schema.sql can be run in pgAdmin 4. Once the .sql files is ran, the four .csv files can be manually imported into the tables. Once that is done, the cleaned data will be available for use in your pgAdmin 4 database.