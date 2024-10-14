import pandas as pd
import numpy as np
import os
import scipy.stats as ss
from scipy.stats import contingency
from scipy.stats import chi2_contingency


# IMPORT DATI IN PANDAS

motivo = pd.read_csv("lavoro\motivo.csv")
ita_regione = pd.read_csv("lavoro\ita_regione.csv")

motivo.drop(columns=['RESIDENCE_TERR','BASE_PER','UNIT_MEAS','UNIT_MULT',
                     'NOTE_MEAN_TRANSPORT_MEANS','NOTE_TIME_PERIOD',
                     'OBS_STATUS','NOTE_DS','NOTE_RESIDENCE_TERR',
                     'NOTE_MAIN_DESTINATION','NOTE_DATA_TYPE','TIME_PERIOD','FREQ',
                     'DATAFLOW','NOTE_MAIN_PURPOSE_SAME_DAY_VISIT','DATA_TYPE','MEAN_TRANSPORT_MEANS'], 
                     inplace=True)

motivo.drop(motivo[(motivo['MAIN_DESTINATION']=='WRL_X_ITA') | 
                   (motivo['MAIN_DESTINATION']=='TOTAL') | 
                   (motivo['OBS_VALUE']=='NaN')].index, inplace=True)

motivo['MAIN_DESTINATION']=motivo['MAIN_DESTINATION'].replace(['IT'],['Italia'])

motivo['MAIN_PURPOSE_SAME_DAY_VISIT']=motivo['MAIN_PURPOSE_SAME_DAY_VISIT'].replace(['PLEAS','PLEAS_TRN','RELATIV','RELIG',
                                                                                    'TRAIN_CULT','CULT','SHOP','TOT_BUS','OT_DAYVIS','TOT_ESC'],
                                                                                    ['Svago','Tempo libero','Visita parenti/amici','Pellegrinaggio',
                                                                                    'Formazione','Cultura','Shopping','Lavoro','Altro motivo','Visite in giornata'])
nuove_colonne = {'MAIN_DESTINATION':'Destinazione',
      'MAIN_PURPOSE_SAME_DAY_VISIT': 'Motivazione della visita',
      'OBS_VALUE':'Valori osservati'}
motivo.rename(columns=nuove_colonne, inplace = True)


ita_regione.drop(columns=['DATAFLOW','FREQ','RESIDENCE_TERR','DATA_TYPE',
                          'MAIN_PURPOSE_SAME_DAY_VISIT','MEAN_TRANSPORT_MEANS','OBS_STATUS','NOTE_DS',
                          'NOTE_RESIDENCE_TERR','NOTE_DATA_TYPE','NOTE_MAIN_DESTINATION',
                          'NOTE_MAIN_PURPOSE_SAME_DAY_VISIT','NOTE_MEAN_TRANSPORT_MEANS','NOTE_TIME_PERIOD',
                          'BASE_PER','UNIT_MEAS','UNIT_MULT'], inplace=True)

ita_regione['MAIN_DESTINATION']=ita_regione['MAIN_DESTINATION'].replace(['IT','ITC1','ITC2','ITC3','ITC4',
                                                                              'ITD1','ITD2','ITD3','ITD4','ITD5',
                                                                              'ITDA','ITE1','ITE2','ITE3','ITE4',
                                                                              'ITF1','ITF2','ITF3','ITF4','ITF5',
                                                                              'ITF6','ITG1','ITG2'],
                                                                              ['Italia','Piemonte',"Valle D'Aosta",
                                                                               'Liguria','Lombardia','PA Bolzano',
                                                                               'PA Trento','Veneto','Friuli Venezia Giulia',
                                                                               'Emilia Romagna','Trentino Alto Adige',
                                                                               'Toscana','Umbria','Marche','Lazio',
                                                                               'Abruzzo','Molise','Campania','Puglia',
                                                                               'Basilicata','Calabria','Sicilia','Sardegna'])

nuove_colonne = {'MAIN_DESTINATION':'Regione di arrivo',
           'TIME_PERIOD':'Anno',
           'OBS_VALUE':'Valori osservati'}
ita_regione.rename(columns=nuove_colonne, inplace=True)


print(motivo)
print('-------------')
print(ita_regione)

#esportazione file csv pulito
#motivo.to_csv('mo.csv')
#esportazione file csv pulito
#ita_regione.to_csv('ita_reg.csv')
