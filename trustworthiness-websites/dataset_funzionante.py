import pandas as pd
import numpy as np
import os
import scipy.stats as ss
from scipy.stats import contingency
from scipy.stats import chi2_contingency


# IMPORT DATI IN PANDAS

df_websites = pd.read_excel("ProjectWork\dataset1.xlsx")


# ANALISI ESPLORATIVA PRELIMINARE

print("\nPrime 5 righe:\n")
print(df_websites.head()) # default 5
print("\nUltima riga:\n")
print(df_websites.tail(1))
print("\nInfo:\n")
df_websites.info(show_counts=True)

df_websites.drop(columns=['Country_Rank','Avg_Daily_Pageviews','Facebook_likes','Twitter_mentions',
                          'Google_pluses','LinkedIn_mentions','Pinterest_pins','StumbleUpon_views','Status','Traffic_Rank','Reach_Day',
                          'Month_Average_Daily_Reach','Daily_Pageviews','Month_Average_Daily_Pageviews','Daily_Pageviews_per_user',
                          'Reach_Day_percentage','Month_Average_Daily_Reach_percentage','Daily_Pageviews_percentage',
                          'Month_Average_Daily_Pageviews_percentage','Daily_Pageviews_per_user_percentage','Subnetworks','Registrant',
                          'Registrar','Hosted_by','Location'], inplace=True)



print("\nPrime 5 righe dopo 'drop()':\n")
print(df_websites.head()) # default 5
print("\nUltima riga dopo 'drop()':\n")
print(df_websites.tail(1))
print("\nInfo dopo 'drop()':\n")
df_websites.info(show_counts=True)


# INSERT COLONNA ID
'''
df_websites.insert(0,'ID', range(1, 1 + len(df_websites)))
print("\nColonna 'ID':\n")
df_websites.info(show_counts=True)

'''
# GESTIONE VALORI NULLI

'''
3   Avg_Daily_Visitors    9396 non-null   object

'''

print("\n'Avg_Daily_Visitors' isnull:\n")
print(df_websites[df_websites['Avg_Daily_Visitors'].isnull()]) # 144 rows

df_websites['Avg_Daily_Visitors'].fillna('0', inplace=True)
print(df_websites['Avg_Daily_Visitors'])
print("\n'Avg_Daily_Visitors' isnull:\n")
print(df_websites[df_websites['Avg_Daily_Visitors'].isnull()])
df_websites.info(show_counts=True)

df_websites['Avg_Daily_Visitors'] = df_websites['Avg_Daily_Visitors'].str.replace(" ", "")
df_websites['Avg_Daily_Visitors']=df_websites['Avg_Daily_Visitors'].astype('int64')
media_visitatori = df_websites['Avg_Daily_Visitors'].mean(axis=0)
media_visitatori_arrotondata = media_visitatori.round().astype(int)
df_websites['Avg_Daily_Visitors'].replace(0, media_visitatori_arrotondata, inplace=True)



print("\n'Trustworthiness' unique:\n")
print(df_websites['Trustworthiness'].unique()) # ['Excellent' 'Unknown' 'Good' 'Unsatisfactory' 'Very poor' 'Poor']
print("\n'Trustworthiness', 'Child_Safety', 'Privacy' value counts:\n")
print(df_websites.Trustworthiness.value_counts()) # Unknown: 1219

print("\n'Child_Safety' unique:\n")
print(df_websites['Child_Safety'].unique()) # ['Excellent' 'Unknown' 'Good' 'Unsatisfactory' 'Very poor' 'Poor']
print("\n'Child_Safety' value counts:\n")
print(df_websites.Child_Safety.value_counts()) # Unknown: 1509

print("\n'Privacy' unique:\n")
print(df_websites['Privacy'].unique()) # ['Excellent' 'Unknown' 'Good' 'Unsatisfactory' 'Very poor' 'Poor']
print("\n'Privacy' value counts:\n")
print(df_websites.Privacy.value_counts()) # Unknown: 1219

#################




df_websites = df_websites.drop(
    (df_websites[(df_websites['Trustworthiness'] =='Unknown') | 
                 (df_websites['Child_Safety'] =='Unknown') | 
                 (df_websites['Privacy'] =='Unknown')].index))
##################


# GESTIONE DUPLICATI

print(f"\nDuplicati: {df_websites[df_websites.duplicated()]}\n")


# GESTIONE COLONNE E TIPO VALORI




# print("\n'Website' unique:\n")
# print(df_websites['Website'].unique())
# print(df_websites['Website'].unique().shape)
# #print(df_websites.Website.unique())
# print("\n'Websites' value counts:\n")
# print(df_websites.Website.value_counts())
# #print(df_websites.Website.value_counts(normalize=True))

#print(df_websites['Website'])
# df_websites['Avg_Daily_Visitors'].fillna('0', inplace=True)
# print(df_websites['Avg_Daily_Visitors'])
# print("\n'Avg_Daily_Visitors' isnull:\n")
# print(df_websites[df_websites['Avg_Daily_Visitors'].isnull()])
# df_websites.info(show_counts=True)

# #os.system('cls')
# df_websites['Avg_Daily_Visitors'] = df_websites['Avg_Daily_Visitors'].str.replace(" ", "")
# df_websites['Avg_Daily_Visitors']=df_websites['Avg_Daily_Visitors'].astype('int64')
# media_visitatori = df_websites['Avg_Daily_Visitors'].mean(axis=0)
# media_visitatori_arrotondata = media_visitatori.round().astype(int)
# df_websites['Avg_Daily_Visitors'].replace(0, media_visitatori_arrotondata, inplace=True)


print(df_websites['Avg_Daily_Visitors'])
df_websites.info(show_counts=True)
nuove_colonne = {'Website':'website',
           'Trustworthiness':'trustworthiness',
           'Avg_Daily_Visitors':'avg_daily_visitors',
            'Child_Safety':'child_safety',
            'Privacy':'privacy',
            'country':'country'}
df_websites.rename(columns=nuove_colonne, inplace=True)
#df_websites.info(show_counts=True)

'''# INSERIMENTO NUOVE COLONNE
df_websites['tw_rates'] = df_websites.loc[:,'trustworthiness']
df_websites['cs_rates'] = df_websites.loc[:,'child_safety']
df_websites['pr_rates'] = df_websites.loc[:,'privacy']

rating_mapping = {
    'Excellent': 5,
    'Good': 4,
    'Poor': 3,
    'Very poor': 2,
    'Unsatisfactory': 1,
    'Unknown': 0
}

df_websites['tw_rates'] = df_websites['tw_rates'].map(rating_mapping)
df_websites['cs_rates'] = df_websites['cs_rates'].map(rating_mapping)
df_websites['pr_rates'] = df_websites['pr_rates'].map(rating_mapping)

df_websites['tw_rates']=df_websites['tw_rates'].astype('float16')
df_websites['cs_rates']=df_websites['cs_rates'].astype('float16')
df_websites['pr_rates']=df_websites['pr_rates'].astype('float16')'''

'''print(df_websites['tw_rates'])
print('---------------')
print(df_websites['cs_rates'])
print('---------------')
print(df_websites['pr_rates'])
print('---------------')


df_websites.info(show_counts=True)
'''

'''
# COEFFICIENTE DI PEARSON
correlazione_CS = df_websites['tw_rates'].corr(df_websites['cs_rates'])
correlazione_PR = df_websites['tw_rates'].corr(df_websites['pr_rates'])

print(f'Il coefficiente di correlazione tra Trustworthiness e Child_Safety è {correlazione_CS}') 
print(f'Il coefficiente di correlazione tra Trustworthiness e Privacy è {correlazione_PR}')'''
df_websites.info(show_counts=True)




'''
# Calcolo della covarianza
covariance = df_websites['tw_rates'].cov(df_websites['pr_rates'])

# Calcolo della varianza di X
variance_x = df_websites['tw_rates'].var()

# Calcolo del coefficiente di regressione
regression_coefficient = covariance / variance_x

# Calcolo dell'intercetta
intercept = df_websites['pr_rates'].mean() - regression_coefficient * df_websites['tw_rates'].mean()

print(f"Coefficiente di regressione tra tw_rates e pr_rates è: {regression_coefficient}")
print(f"Intercetta: {intercept}")
print("-----------------------")

# Calcolo della covarianza
covariance2 = df_websites['tw_rates'].cov(df_websites['cs_rates'])

# Calcolo della varianza di X
variance_x2 = df_websites['tw_rates'].var()

# Calcolo del coefficiente di regressione
regression_coefficient2 = covariance2 / variance_x2

# Calcolo dell'intercetta
intercept2 = df_websites['cs_rates'].mean() - regression_coefficient2 * df_websites['tw_rates'].mean()

print(f"Coefficiente di regressione tra tw_rates e cs_rates è: {regression_coefficient2}")
print(f"Intercetta: {intercept2}")
'''




# Calcolo della correlazione
'''correlation_matrix = df_websites.corr('tw_rates', 'cs_rates')
print("Matrice di correlazione:")
print(correlation_matrix)
# Calcolo della regressione
slope, intercept, r_value, p_value, std_err = linregress(df_websites['tw_rates'], df_websites['cs_rates'])
print("Coefficiente angolare (m):", slope)
print("Intercetta (c):", intercept)
print("Valore di R^2:", r_value**2)
'''


'''conteggio1 = df_websites['cs_rates'].value_counts()
print('cs_rates', conteggio1)
print('---------------')
conteggio2 = df_websites['tw_rates'].value_counts()
print('tw_rates', conteggio2)
print('---------------')
conteggio3 = df_websites['pr_rates'].value_counts()
print('pr_rates', conteggio3)'''



#DROP  DELLE RIGHE CONTENENTI IL VALORE 'Unknown'
df_websites = df_websites.drop(df_websites[(df_websites['trustworthiness'] =='Unknown') | (df_websites['child_safety'] =='Unknown') | (df_websites['privacy'] =='Unknown')].index)


df_websites.info(show_counts=True)

#CALCOLO CRAMER
tab_contingenza_tc = pd.crosstab(df_websites['trustworthiness'], df_websites['child_safety'])
tab_contingenza_tp = pd.crosstab(df_websites['trustworthiness'], df_websites['privacy'])
print(f"{tab_contingenza_tc}\n")
print(f"{tab_contingenza_tp}\n")
chi2, p_value, g_freedom, expected = chi2_contingency(tab_contingenza_tc)
chi2_tp, p_value_tp, g_freedom_tp, expected_tp = chi2_contingency(tab_contingenza_tp)
print(f'chi2_tc: {chi2},\n')

print('----------------------------------------')
print(f'chi2_tp: {chi2_tp},\n')



Cramer_V_tc = contingency.association(tab_contingenza_tc, 
                                      method='cramer') 
Cramer_V_tp = contingency.association(tab_contingenza_tp, 
                                      method='cramer') 




print(f"V_Cramer b\w trustworthiness and child_safety:\n{Cramer_V_tc:.4f}\n\n") 

print(f"V_Cramer b\w trustworthiness and privacy:\n{Cramer_V_tp}\n\n") 









'''

CREATE TABLE child_safety (
    id INT AUTO_INCREMENT PRIMARY KEY,
    c_safety VARCHAR(50)
);
INSERT INTO child_safety (c_safety)
SELECT DISTINCT child_safety
FROM trustworthiness_websites
WHERE 1;

'''