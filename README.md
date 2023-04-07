# Assignment for " Coding for Economists"
  # Understand folder structure. Perform operations on files in different folders.
     # I used the data "World Bank Life Expectancy" from "Gabor's Data Analytics" page (https://osf.io/pguwf/) for this part of the project. I downloaded it using curl, addittionally I demonstrated other commands with folders:
     #to see files in the current forder
     ls
     ls -l
     ls -hl
     # to create new directories
     mkdir data
     mkdir data/raw
     mkdir data/raw/life-expectancy
     # see the files in the folder
     ls data/raw/life-expectancy/
     # change directory
     cd data/raw/life-expectancy
     cd Assignment/data/raw/life-expectancy/
     # to download the data
     curl -Lo life-expectancy.csv https://osf.io/pguwf//download/v1.0/worldbank-lifeexpectancy-raw.csv
     #to save the history
     history
     history >history-07-04-2023.txt
     
  # Automate repeating tasks using Python “for” loops.
      #import important settings for python
      import pandas as pd
      import requests
      from csv import DictReader
      # automation of repeating task using "for"
      text = 'Apples,bananas,oranges and other fruits.'
      word = 'apples'
      print(text)
      counter = {}
      for word in text.split():
        print(word, counter)
        if word not in counter:
          print("ohh")
        counter[word] = 0
        counter[word] += 1
        print('***')
       print(counter)
      
      
  # Use Python “lists” and “dictionaries” appropriately. Demonstrate one of the two.
    #work with lists
  List = ["Apples", "Bananas", "Oranges"]
  Second = ['are', 'fruits']
  print("List containing multiple values: ")
  print(List)
  print(List[1:3])
  sentence = List+Second
  print(sentence)
  
  # Break up work into smaller components using Stata .do files.
      # submitted do.file
  # For STATA:
    # Read .csv data in Stata.
    # Fix common data quality errors in Stata (for example, string   vs number, missing value).
    # Prepare a sample for analysis by filtering observations and variables and creating transformations of variables. Demonstrate all three.
    # Save data in Stata.
    # Run ordinary least squares regression in Stata.
    # Create a graph (of any type) in Stata.
    # Save graphs as files.
  # I choosed data from the world bank for regression to show all manipulations. For this I have taken data in WorldBank dataset of GDPpc and CO2 emission in csv format. Submitted do.file
  
    #I put parts of my history here for reproducing my work