# Azure-Data-Engineering
Azure Data Engineering demo project

## SSMS DataBase script
![image](https://github.com/user-attachments/assets/0ac1f353-0556-44c7-8a8d-c643e7c1d232)



## Created Datalake Gen2  to ingest data from SSMS using Datafacotry pipeline activities 
![image](https://github.com/user-attachments/assets/f80d3290-1837-466f-884f-3073d311bce7)


## Launching Datafactory studio
![image](https://github.com/user-attachments/assets/41b39c98-5129-40f0-841b-77b89859e66b)

## Create a SelfHost Integration Runtion to connect the SSMS
![image](https://github.com/user-attachments/assets/de7a1449-e125-4dd4-ad97-6a9ea187ae63)

## Launch Microsoft Integration Runtime Configuration Manager and start service
![image](https://github.com/user-attachments/assets/0a4e554b-a2a1-4f05-985e-2deca0e05a76)

## Go to Author, create a new pipeline and select copydata activity from Activities
![image](https://github.com/user-attachments/assets/4eaf1989-4d37-4df2-b238-0118a390f028)

## Click on Source, new dataset, then select "Sql Server"
![image](https://github.com/user-attachments/assets/af3dc0c2-61a2-4486-b3fd-55dedfc970e5)

## Select created Onpremises linked service, then select table from dropdown menu, ok
![image](https://github.com/user-attachments/assets/d3299afd-2492-4eb1-85ad-cd150c25f0db)

## To create sink dataset, click on sink, newdataset, search and select DataLake Gen2 storage account
![image](https://github.com/user-attachments/assets/189aa832-905e-4371-9233-6294cf2c3ecb)

## select previously created linkedservice for AutoresolveIR, create a folder with bronze as raw data is being stored here, then click on ok
![image](https://github.com/user-attachments/assets/f3f4bbb7-f2fd-473d-ab11-ea93478316a2)

## Click on pipeline validation, then debug it, once you get succeeded status, publish the pipeline
![image](https://github.com/user-attachments/assets/60b8cbec-6965-44d2-ba71-837ce22ab045)

## Finally bronze folder got created and raw data got loaded from onpremises sql server into Datalake Gen2 storage account.
![image](https://github.com/user-attachments/assets/0b21327a-44c9-47e8-9209-f0becac3d0d6)

====================================================================================================================================================================================
# Project 2
# ✅ Project Overview: Retail Analytics Pipeline on Azure
This project showcases the implementation of a retail sales data pipeline using Azure Data Factory and SQL Server. It simulates a real-world scenario where sales data is ingested from an on-premises SQL Server and loaded into an Azure SQL Database for analysis and reporting.

💡 Project Goal
The goal of this project is to build a robust, automated, and scalable data pipeline that:

Connects to an on-premises SQL Server using a Self-hosted Integration Runtime

Ingests retail sales data via Azure Data Factory with dynamic parameterization and ForEach activity

Loads the data into a target Azure SQL Database

Prepares the data for downstream analytics and visualization using Power BI or other tools

🧱 Database Design
Created a database named SalesOrdersDB with the following tables:

Customers

Orders

OrderDetails

These tables represent essential entities in a retail sales environment and are structured to support joins and transformations during data ingestion.

🚀 Data Pipeline Setup
Built an ADF pipeline to automate data ingestion

Used Copy Data activity with dynamic content and parameterization

Configured a trigger to schedule the pipeline execution
![image](https://github.com/user-attachments/assets/976e0d50-534c-4a89-b795-0807e72812bc)

![image](https://github.com/user-attachments/assets/0d6328e5-7990-4b7a-9ac8-0b460042697b)

![image](https://github.com/user-attachments/assets/c57895af-73bc-4673-8f7f-ba276bba5d77)

![image](https://github.com/user-attachments/assets/915af9b8-21f0-48bc-a6ff-90a50310e065)



![image](https://github.com/user-attachments/assets/3d247d87-5a01-49bf-99d9-1a19826ac84d)

![image](https://github.com/user-attachments/assets/07b0291c-f5a8-4a24-b45a-7021886ce9fa)


![image](https://github.com/user-attachments/assets/48ce9c76-4d3b-447f-99e0-2a101e858ce0)


![image](https://github.com/user-attachments/assets/43509b7f-c4c1-4e1f-8892-94a4a627bcd9)

![image](https://github.com/user-attachments/assets/d6933f15-12b5-4882-97a3-44176daf799f)



![image](https://github.com/user-attachments/assets/5cb04fb5-9656-4461-afd2-a1d57aea4327)


# Transformed Data loaded into Sink

![image](https://github.com/user-attachments/assets/281c33a6-a1fd-4700-a0d8-6ec87fce4339)

# Loaded data preview

![image](https://github.com/user-attachments/assets/9786e585-6309-406e-807f-0279c3af7648)









