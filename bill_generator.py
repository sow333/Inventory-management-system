from datetime import datetime
from datetime import timedelta
import random
import json
import time

#
l_target_path = "E:/Python/InventoryManagementsystem/bills/"

"""
Bill Generator

billid,storeid,date
prod_id qty
prod_id qty
prod_id qty
prod_id qty
prod_id qty
prod_id qty
"""

while True:
    l_store_id = random.randint(1, 4)
    
    # now = datetime.now()
    # l_bill_id = now.strftime("%Y%m%d%H%M%S")

    l_bill_id = datetime.now().strftime("%Y%m%d%H%M%S")

    # Generate Random Date
    start_date = datetime(2000, 1, 1)
    end_date = datetime(2020, 1, 1)
    time_between_dates = end_date - start_date
    days_between_dates = time_between_dates.days
    random_number_of_days = random.randrange(days_between_dates)

    l_date =  start_date + timedelta(days=random_number_of_days) 
    

    l_bill_details = {}

    for i in range(random.randint(1, 25)):
                
        l_prod_id = random.randint(1,25)
        l_qty = random.randint(1,20)
        l_bill_details[l_prod_id] = l_qty

        l_data = { "bill_id":l_bill_id
                  ,"store_id":l_store_id
                  ,"bill_date":l_date.strftime("%Y-%m-%d, %H:%M:%S")
                  ,"bill_details":l_bill_details}
                  
        print(l_data)

        with open(l_target_path + l_bill_id + ".json", "w") as new_file:
            new_file.write(json.dumps(l_data))
            
    time.sleep(3)
        
        
        