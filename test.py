# -*- coding: utf-8 -*-
"""
Created on Tue Mar 16 22:59:07 2021

@author: sowmya
""" 
data={'bill_id': '20210310212345', 'store_id': 2, 'bill_date': "01022012", 'bill_details': {"9":2, "6":1, "15": 9}}

for key,value in data['bill_details'].items:
    print(data['bill_id'],key,value)
