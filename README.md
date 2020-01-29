# Azure-Automation and PowerApps

## Overview
Step by Step guide to understand how to script and automate scaling of resources in Azure in a simple yet powerful fashion to help save you money in the cloud using multiple Microsoft tools. Azure Automation runbooks to code your Azure PowerShell scripts, MS Flow as your orchestration tool and MS PowerApps as your friendly, simple UI

As part of my organisation adopting SAFe recently and wanting to have a more 'scale on demand' approach, I produced this demo to share at a tech conference and wanted to share witht he broader community.

![Automation](https://etsaustorage.blob.core.windows.net/$web/images/github/automation.jpg)


## Deploy your Resources
For this demo I will deploy Azure App Service Plans, Azure SQL Databases and Virtual machines to demonstrate how scaling and automation can save money



## Create and update your Automation Account

Creating an Automation account is simple, browse to 'create a resource' and follow standard steps subscription, resource group name and location.  When create be sure to create the 'Azure run As account' as this is crucial for authenticating with Azure to manage Azure resources.

![Deploy](https://etsaustorage.blob.core.windows.net/$web/images/github/createrunbook.jpg)

Once you have created the resource, the first thing I would suggest doing is installing the required modules for this particular demo which includes  
-AzureRM.Resources  
-AzureRM.Profile  

## Create your Azure PowerShell Runbooks

Create the runbooks by going to the Runbooks blade, name your runbook appropriately for this demo I have created 6 runbooks one for each resources and its purpose.  
  
For this demo I have attached the PowerShell scripts for each resource type to the repo.
  
-Scale Up SQL  
-Scale Up ASP  
-Start VM  
-Scale Down SQL  
-Scale Down ASP  
-Stop VM  

![runbooks](https://etsaustorage.blob.core.windows.net/$web/images/github/runbooks.jpg)

This is extremly powerful where for every new resouce added, the powerscript will get all resources of that type and execute so make sure resource groups are segregated as required for each environment

## Demonstrate how to schedule runbooks 

All your runbooks can be scheduled and automated to run for desired length of time, particular days of the week and timeframe or continuously with no expiry, its pretty self explanatory once you create the runbook. For an enterprise for non-production you would want it to scale down end of business hours and at the weekend.

## Create and link Microsoft Flow to to your Azure Automation runbooks

Once you have created you runbooks, tested and published them you can then login to MS Flow to create and link your PowerApp Flow button to your automation runbook in Azure

![Create Flow](https://etsaustorage.blob.core.windows.net/$web/images/github/createflow.jpg)
![Configure Flow](https://etsaustorage.blob.core.windows.net/$web/images/github/configureflow.jpg)
![Flow](https://etsaustorage.blob.core.windows.net/$web/images/github/flow.jpg)

Check that when you trigger or run that flow button it triggers in azure under the automation account > Jobs blade

![Automation Jobs](https://etsaustorage.blob.core.windows.net/$web/images/github/jobsrun.jpg)

## Create your PowerApp and link to your Flow button

Once you have created your PowerApp flow buttons login to MS PowerApps with a work/school account. This should give you the option to create a blank canvas for Mobile or tablet. you can then begin to customise the PowerApp with text labels, colour and buttons which you can then link to your Flow Buttons as below

![Create PowerApp](https://etsaustorage.blob.core.windows.net/$web/images/github/createpowerapp.jpg)
![Link Flow Action](https://etsaustorage.blob.core.windows.net/$web/images/github/linkactionflow.jpg)

![Demo App](https://etsaustorage.blob.core.windows.net/$web/images/github/powerappcopy.jpg)
![Demo App](https://etsaustorage.blob.core.windows.net/$web/images/github/powerapp2copy.jpg)

