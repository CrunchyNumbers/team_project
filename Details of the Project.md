Credit Card Eligibility Data: Determining Factors - Team Project 1  

Completed by: Navneet Choudhary, Rihui Ren, Yevhen Horokhovskykh, Abigeal


Project Breakdown:

Questions:

What business problem would our analysis be solving?
Financial institution (Banks)
They are the ones that determine Eligibility
How do they improve their accuracy of customers on who should be eligible for credit cards?
What factors to consider to develop a new product using the findings of this data? 

Where value will be added?
Whether a target variable (0 to 1) should be increased or lowered and how the total number of CCs is going to change
Coefficiency of each indicator to determine which component of the table is the most critical.

Solution Breakdown:
1) Determine the current rate of eligibility by getting a total number of people that were eligible and not eligible (SQL).
2) Run the data in python, standarize the data from string to floats, to ensure all columns can be analyzed with statistically (Python).
3) Determine the most important factors by reviewing the coefficients and p-values (Python).
4) Plot and analyze the important determining factors and develop solutions to increase elibility (Python). 

Summary and Details:
The project is to determine the factors that determine credit card eligibility. The factors that were assessed varied from owning property, age, unemployment, etc. The last column in the dataset determined if the individual was eligible or not to get a credit card. We first were able to determine out of the dataset, how many people were eligible and how many people were not eligible for the credit card. Once we extracted that information, we wanted to extract the data to determine the most important factors that are considered and are important when determining eligibilty. Once we ran the statistically summary, we were able to use factors such as pension, and income type to create a model. After the model, we were able to determine what factors can be improved from the business stand-point to increase the eligibity of credit cards. We were able to determine what areas are the most important and can be improved and why. 


Rules of Engagement
1. Everyone is respectful.
2. All the groups members can share their opinions.
3. Decisions are made in majority after listening to everyone's ideas.
4. If you are more knowledgeable in an area, please support other group members.
5. Everyone has to take a lead on a portion of the project. Support is provided.


Project scope:
Dataset cleaning/processing (separate table with features selected in step 2) - Abi
Data extraction using Python --EDA (feature selection for further analysis) - Nav
Plots
TBD
Regression modeling (logistic, KNN, random forest, Statsmodel - GLM) - Yev
Data prediction (if applicable) — Model evaluation - Julia



Team collaboration timeline:
Friday, June 21 - 7:30pm-9pm
Saturday, June 22 - 10am-12pm, 8-10pm(?)
Sunday, June 23 - TBD



Data analysis:
We want to explore the data to determine:
Which components of the dataset (gender, property etc) have the most significant impact on the bank’s decision


