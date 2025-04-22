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



















