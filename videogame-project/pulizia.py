import pandas as pd
import numpy as np
import os
import scipy.stats as ss
from scipy.stats import contingency
from scipy.stats import chi2_contingency
from scipy.stats import pearsonr


#CSV
games = pd.read_csv("videogame\gamesales.csv")

#Controllo csv
max = games['Year'].max()
min = games['Year'].min()
old = games[games['Year'] == min]
new = games[games['Year'] == max]
mean = games[games['Year'] == 2000]
centre = games[games['Year'] == 2006]
#Si può fare l'analisi fatta da riga 14 a riga 19 con il codice sotto:
descr_stats = games['Year'].describe()
'''
print(descr_stats)
media     2006
std       5.828981
min       1980
25%       2003
50%       2007
75%       2010
max       2020
'''

#Eliminiamo la colonna 'Rank'
games.drop(columns=['Rank'], inplace=True)

#Modifichiamo i numeri delle vendite in milioni
columns = ['NA_Sales', 'EU_Sales', 'JP_Sales',
           'Other_Sales', 'Global_Sales']
games[columns] = games[columns].apply(
    lambda x: (x * 1000000).astype(int))

#Eliminiamo tutte le righe con valori mancanti
games = games.dropna()

#Trasformiamo i valori di Year da float a int
games['Year'] = games['Year'].astype(int)

#Eliminiamo la colonna Index
games.index = range(1, len(games) + 1)

#frequenze
freq1 = games['Genre'].value_counts()
freq2 = games['Publisher'].value_counts()
freq3 = games['Platform'].value_counts()

#Correlazione
correlation = games[['NA_Sales', 'EU_Sales',
                     'JP_Sales', 'Other_Sales',
                     'Global_Sales']].corr()


#Test di supposizione
def esegui_test_t(x, y, regione1, regione2):
    t_stat, p_value = ss.ttest_ind(x, y)
    print(f"t-statistic ({regione1} vs {regione2}): {t_stat}")
    print(f"p-value: {p_value}")
    
    alpha = 0.05
    if p_value < alpha:
        print(f"C'è una differenza significativa tra le vendite medie in {regione1} e {regione2}.")
    else:
        print(f"Non c'è una differenza significativa tra le vendite medie in {regione1} e {regione2}.")

    # Estrai le vendite
eu_sales = games['EU_Sales']
na_sales = games['NA_Sales']
jp_sales = games['JP_Sales']
ot_sales = games['Other_Sales']

    # Esegui i test t di Student
esegui_test_t(eu_sales, na_sales, "Europa", "Nord America")
esegui_test_t(jp_sales, na_sales, "Giappone", "Nord America")
esegui_test_t(ot_sales, na_sales, "Other", "Nord America")
esegui_test_t(eu_sales, jp_sales, "Europa", "Giappone")
esegui_test_t(ot_sales, jp_sales, "Other", "Giappone")
esegui_test_t(ot_sales, eu_sales, "Other", "Europa")


valori = games['Publisher'].nunique()


