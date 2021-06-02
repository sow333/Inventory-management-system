# -*- coding: utf-8 -*-
"""
Created on Tue Mar 16 23:05:21 2021

@author: sowmya
"""

import pymysql  
from datetime import datetime  
import json
import os
import logging as log

g_folder = "E:/Python/InventoryManagementSystem/bills/"

class bill:
    def __init__(self, p_bill_json, p_bills_path):#p_cursor):
        self.l_data = p_bill_json
        self.l_bills_path = p_bills_path

        self.conn = pymysql.connect(host='localhost', port=3306, user='sowmya',passwd=123456,db='InventoryManagement')
        
        #l_bill_det_insert = "insert into bill_data(billdetail_id, bill_id, prod_id,qty) values ({0},{1},{2},{3});)"
        
    def load_row(self,sql,val):
        self.sql = "INSERT INTO bill_data(billdetail_id, bill_id, prod_id,qty) VALUES ({},{},{},{}))"
        self.val = [(20210310232343,4, STR_TO_DATE('2020/02/03','%Y/%m/%d')),(202103102345,8, STR_TO_DATE('3000/01/01','%Y/%m/%d')),
       (self.l_data["bill_id"],8, STR_TO_DATE('2020/03/23','%Y/%m/%d')),(202106074567,10, STR_TO_DATE('2000/06/03','%Y/%m/%d'))]
        l_bill_det_insert = "insert into bill_data(billdetail_id, bill_id, prod_id,qty) values ({0},{1},{2},{3});"
       (self.l_data[([billdetail_id]23456789101234,[bill_id]67,[prod_id]23,[qty]17),([billdetail_id]78910111214123,[bill_id]56,[prod_id]45,[qty]18))]";
                    

# Class1 Object for Connection, Cursor
    def db_con(self):
        self.cursor=db_con.cursor() 
        self.load_row()
        
# entries = ["20210311170248.json","20210311170251.json"]
entries = os.listdir(g_folder)
print(entries)
for file_name in entries:
    with open(g_folder + file_name,'r')as f:
        data = f.read()
        print(data)
        dataj = json.loads(data)
        print(dataj["bill_id"])
        print(dataj["store_id"])
        print(dataj["bill_date"])
        for k,v in dataj["bill_details"].items():
            print(k,v) 
            
        try:
            print(l_bill_insert.format(dataj["bill_id"],dataj["store_id"],dataj["bill_date"]))
            # cursor.execute(l_bill_insert.format(dataj["bill_id"],dataj["store_id"],dataj["bill_date"]))
        except:
            log.critical('JSON File '+ file_name + ' load failed!!')
            # Move "l_bills_path + file_name" into "l_errors_path + file_name"
        else:    
            x = 0
            for product_id, qty in dataj["bill_details"].items():
                x+=1
                try:
                    print(l_bill_det_insert.format(int(dataj["bill_id"])+x,dataj["bill_id"],product_id,qty))
                    # cursor.execute(l_bill_det_insert.format(int(dataj["bill_id"])+x,dataj["bill_id"],product_id,qty))
                    
                    #delete from billdetails where bill_id = dataj["bill_id"];
                    #delete from bill where bill_id = dataj["bill_id"];

                except:
                    log.critical('JSON File '+ file_name + ' load failed!!')
                    # Move "l_bills_path + file_name" into "l_errors_path + file_name"
                else: 
                    pass
                    # Move "l_bills_path + file_name" into "l_processed_path + file_name"
                        
            #Update billdetails.line_total and bill.bill_total 
        
        
        
        UPDATE billdetails
        SET billdetails= bill_id*prod_id
        WHERE id IN
          (SELECT id FROM items
               WHERE retail / wholesale >= 1.3 AND quantity > 100);
                   
    # Create Class2 One Object per Insert into Bill /Bill Details
class inert:
    def __init__(self, sql, val):
        self.sql = sql
        self.val = val

    def myfunc(self):
        print("Hello my name is " + self.name)
        self.cursor=db_con.cursor() 
        cursor.execute("select * from Loan")
        p1 = inert(cursor.execute(sql, val)) 
        p1.myfunc()
        cursor.close() # put these two lines at last
        conn.commit()
 

