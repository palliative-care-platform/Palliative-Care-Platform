from django.db import models

# Create your models here.


class login(models.Model):
    logid = models.AutoField(primary_key=True)
    username = models.CharField("username",max_length=100)
    password =  models.CharField("password",max_length=100)
    role=models.CharField('role',max_length=10)
    #logid,username,password,role
    
class user(models.Model):
    User_id= models.AutoField(primary_key=True)
    User_name=models.CharField("uname", max_length=200)
    User_address=models.CharField("address", max_length=200)
    User_email=models.CharField("email", max_length=100)
    User_phone=models.CharField("phone", max_length=100)
    User_location=models.CharField("location", max_length=200,default="")
    User_district=models.CharField("district", max_length=200,default="")
    User_status=models.CharField("status", max_length=200)
    Log_id=models.ForeignKey(login, on_delete=models.CASCADE, null=True)
#User_id,User_name,User_address,User_email,User_phone,User_location,User_district,Log_id,User_status
class catgerory(models.Model):
    catgerory_id= models.AutoField(primary_key=True)
    catgerory_name=models.CharField("uname", max_length=200)
    catgerory_address=models.CharField("address", max_length=200)
class Provider(models.Model):
   Provide_id= models.AutoField(primary_key=True)
   Provide_name= models.CharField("Name",max_length=100)
   Provide_address = models.CharField("Staff_address", max_length=500)
   Provide_email = models.EmailField("Staff_email", max_length=200)
   Provide_phone=models.CharField("Staff_phone",max_length=100)
   Provide_location = models.CharField("Staff_location", max_length=200,default="")
   Provide_district = models.CharField("Staff_district", max_length=100,default="")
   Provide_tharif = models.CharField("Staff_tharif", max_length=100,default="")
   Provide_status=models.CharField("Staff_status",max_length=50,default="")
   Provide_doc = models.FileField("Provide_doc", max_length=1000,upload_to='images/')
   Provide_logid=models.ForeignKey(login, on_delete=models.CASCADE, null=True)
   catgerory=models.ForeignKey(catgerory, on_delete=models.CASCADE, null=True)


class Complaint(models.Model):
    Complaint_id= models.AutoField(primary_key=True)
    Complaint_subject= models.CharField("subject", max_length=100)
    Complaint_message= models.CharField("message", max_length=500)
    Complaint_date= models.CharField("date", max_length=100)
    Complaint_reply= models.CharField("replay", max_length=500)
    Provider =models.ForeignKey(Provider, on_delete=models.CASCADE, null=True)


class Feedback(models.Model):
    Feedback_id= models.AutoField(primary_key=True)
    Feedback_subject= models.CharField("subject", max_length=100)
    Feedback_message= models.CharField("message", max_length=500)
    Feedback_date= models.CharField("date", max_length=100)
    Feedback_reply= models.CharField("replay", max_length=500)
    user =models.ForeignKey(user, on_delete=models.CASCADE, null=True)

class servicerequest(models.Model):
   request_id= models.AutoField(primary_key=True)
   service_type= models.CharField("service_type",max_length=100)
   service_details = models.CharField("service_details", max_length=1000)
   reg_date = models.EmailField("reg_date", max_length=200)
   request_date=models.CharField("request_date",max_length=100)
   request_rating = models.CharField("request_rating", max_length=200)
   user =models.ForeignKey(user, on_delete=models.CASCADE, null=True)
   request_status=models.CharField("request_status",max_length=50,default="")
   Provide_logid=models.ForeignKey(login, on_delete=models.CASCADE, null=True)
   catgerory=models.ForeignKey(catgerory, on_delete=models.CASCADE, null=True)

class payment(models.Model):
    Pay_id= models.AutoField(primary_key=True)
    amount= models.CharField("amount", max_length=100)
    pay_status= models.CharField("pay_status", max_length=100)
    servicerequest =models.ForeignKey(servicerequest, on_delete=models.CASCADE, null=True)
    user =models.ForeignKey(user, on_delete=models.CASCADE, null=True)