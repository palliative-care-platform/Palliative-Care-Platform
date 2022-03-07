from django.shortcuts import render,redirect
import datetime
from datetime import date
from django.core.files.storage import FileSystemStorage
from django.db.models import Q
from .models import user as usr,login as log,Provider as stf,Complaint as comp,Feedback as fed,catgerory as cate,servicerequest as ser,payment as pay

# Create your views here.
def index(request):
    msg=request.GET.get("msg",'')
    if(request.session.get('role', ' ')=="admin"):
        response = redirect('/admin')
        return response
    elif(request.session.get('role', ' ')=="provider"):
        response = redirect('/staff')
        return response
    elif(request.session.get('role', ' ')=="user"):
        response = redirect('/user')
        return response
    else:
        return render(request,"index.html",{"msg":msg})
def admin(request):
    if(request.session.get('role', ' ')=="admin"):
        return render(request,"adminhome.html")
    else:
        response = redirect('/index'+"?msg=session expired login again")
        return response
def user(request):
    if(request.session.get('role', ' ')=="user"):
        return render(request,"userhome.html")
    else:
        response = redirect('/index'+"?msg=session expired login again")
        return response
def staff(request):
    if(request.session.get('role', ' ')=="provider"):
        return render(request,"providerhome.html")
    else:
        response = redirect('/index'+"?msg=session expired login again")
        return response
def User_Reg(request):
    
    return render(request,"UserReg.html")

def register_user(request):
    msg=""
    if request.POST:
        t1 = request.POST["t1"]
        t2 = request.POST["t2"]
        t3 = request.POST["t3"]
        t4 = request.POST["t4"]
        t5 = request.POST["t5"]
        t6=request.POST["t6"]
        
        t7 = request.POST["t7"]
        t8 = request.POST["t8"]
        log.objects.create(username=t7, password=t8, role="user")
        data=log.objects.last()
        usr.objects.create(User_name=t1,User_email=t2,User_phone=t3,User_location=t4,User_district=t5,User_address=t6, User_status="approved",Log_id=data)
        msg="Registers successfuly"
        response = redirect('/User_Reg')
        return response
    else:    
        msg = ""
    data1=usr.objects.all()
    return render(request,"UserReg.html",{"msg":msg,"data":data1}) 
    
def Provider_Reg(request):
    msg=""
    data1=cate.objects.all()
    return render(request,"ProviderReg.html",{"msg":msg,"data":data1})
def register_provider(request):
    msg=""
    if request.POST:
        t1 = request.POST["t1"]
        t2 = request.POST["t2"]
        t3 = request.POST["t3"]
        t4 = request.POST["t4"]
        t5 = request.POST["t5"]
        t6=request.POST["t6"]
        tf2 = request.FILES["tf1"]
        t7 = request.POST["t7"]
        t8 = request.POST["t8"]
        t11 = request.POST["t11"]
        t12 = request.POST["t12"]
        log.objects.create(username=t7, password=t8, role="")
        data=log.objects.last()
        
        stf.objects.create(Provide_name=t1,Provide_email=t2,Provide_phone=t3,Provide_location=t4,Provide_district=t5,Provide_address=t6, Provide_status="waiting", Provide_tharif=t12,Provide_logid=data,catgerory_id=t11,Provide_doc=tf2)
        msg="Registers successfuly"
        response = redirect('/Provider_Reg')
        return response
    else:    
        msg = ""
    data1=usr.objects.all()
    return render(request,"ProviderReg.html",{"msg":msg,"data":data1})          

def Login(request):
    if request.POST:
        user = request.POST["username"]
        password = request.POST["password"]
        try:
            data = log.objects.get(username=user, password=password)
            if (data.role == "admin"):
                request.session['username'] = data.username
                request.session['role'] = data.role
                request.session['id'] = data.logid
                response = redirect('/admin')
                return response
            elif (data.role == "provider"):
                request.session['username'] = data.username
                request.session['role'] = data.role
                request.session['id'] = data.logid
                response = redirect('/staff')
                return response
            elif(data.role =="user"):
                request.session['username'] = data.username
                request.session['role'] = data.role
                request.session['id'] = data.logid
                response = redirect('/user')
                return response       
            else:
                return render(request, "index.html", {"msg": "invalid account Details"})
        except:
            return render(request, "index.html", {"msg": "invalid user name or password "})
    else:
        response = redirect('/index')
        return response

def Profile(request):
    msg=""
    ids=request.session["id"]
    if request.POST:
        if request.session["role"] =="provider":
            t2 = request.POST["t2"]
            t3 = request.POST["t3"]
            t4 = request.POST["t4"]
            stf.objects.filter(Provide_logid=ids).update(Provide_address=t2,Provide_email=t3,Provide_phone=t4)
        elif request.session["role"] =="user":
            t2 = request.POST["t2"]
            t3 = request.POST["t3"]
            t4 = request.POST["t4"]
            usr.objects.filter(Log_id=ids).update(User_address=t2,User_email=t3,User_phone=t4)
        
    
    if request.session["role"] =="provider":
        data1=stf.objects.get(Provide_logid=ids)
        returnpage="StaffProfile.html"
    elif request.session["role"] =="user":
        data1=usr.objects.get(Log_id=ids)
        returnpage="UserProfile.html"
    else:
        response = redirect('/index'+"?msg=session expired login again")
        return response
    return render(request,returnpage,{"msg":msg,"data":data1})

def complaints(request):
        msg=""
        #datax=usr.objects.get(Log_id=request.session["id"])
        if request.POST:
                t1 = request.POST["t1"]
                t2 = request.POST["t2"]
                
                msg="updated sucessfully"
                comp.objects.filter(Complaint_id=t1).update(Complaint_reply=t2)
        data1=comp.objects.all()
        return render(request, "Answer_Queries.html",{"msg":msg,"data":data1})

def Feedback(request):
        msg=""
        #datax=usr.objects.get(Log_id=request.session["id"])
        if request.POST:
                t1 = request.POST["t1"]
                t2 = request.POST["t2"]
                
                msg="updated sucessfully"
                fed.objects.filter(Feedback_id=t1).update(Feedback_reply=t2)
        data1=fed.objects.all()
        return render(request, "Answer_Queries1.html",{"msg":msg,"data":data1})
def UserFeedback(request):
        msg=""
        d=request.session['id'] 
        datal=log.objects.get(logid=d) 
        datau=usr.objects.get(Log_id=datal)
        #datax=usr.objects.get(Log_id=request.session["id"])
        if request.POST:
                ids=request.session["id"]
                
                t1 = request.POST["t1"]
                t2 = request.POST["t2"]
                t3 = "2022-02-22"
                msg="updated sucessfully"
                fed.objects.create(Feedback_subject=t1,Feedback_message=t2,Feedback_date=t3,Feedback_reply="not yet Seen",user=datau)
        data1=fed.objects.filter(user_id=datau).all()
        return render(request, "UserFeedback.html",{"msg":msg,"data":data1})
def Logout(request):
    try:
        del request.session['id']
        del request.session['role']
        del request.session['username']
        response = redirect("/index?id=logout")
        return response
    except:
        response = redirect("/index?id=logout")
        return response

def All_Users(request):
    msg=""
    data=usr.objects.all()
    return render(request,"All_Users.html",{"msg":msg,"data":data}) 
def remove_usr(request):
    usr.objects.filter(Log_id=request.GET["id"]).delete()
    log.objects.filter(logid=request.GET["id"]).delete()
    response = redirect('/All_Users')
    return response
def Privacy(request):
    msg=""
    if request.POST:
        t1=request.POST["t1"]
        t2=request.POST["t2"]
        id=request.session["id"]
        data=log.objects.get(logid=id)
        if data.password==t1:
            msg="sucessfully updated"
            log.objects.filter(logid=id).update(password=t2)
        else:
            msg="invalid current password"

    returnpage="adminhead.html"
    if(request.session.get('role', ' ')=="provider"):
        returnpage="providerhead.html"
    elif(request.session.get('role', ' ')=="user"):
        returnpage="userhead.html"
    return render(request, "privacy.html",{"role":returnpage,"msg":msg})

def delete_staff(request):
    stf.objects.filter(Provide_logid=request.GET["id"]).delete()
    log.objects.filter(logid=request.GET["id"]).delete()
    response = redirect('/List_Staff')
    return response
def List_Staff(request):
    msg = ""
    data1=stf.objects.all()
    return render(request,"List_staff.html",{"msg":msg,"data":data1}) 
def approve_provider(request):
        t2=request.GET["id"]
        #datax=usr.objects.get(Log_id=request.session["id"])
        msg="updated sucessfully"
        stf.objects.filter(Provide_logid=t2).update(Provide_status="approve")
        log.objects.filter(logid=t2).update(role="provider")
        data1=comp.objects.all()
        response = redirect('/List_Staff')
        return response

def add_category(request):
    msg=""
    data1=cate.objects.all()
    return render(request,"AddCategory.html",{"msg":msg,"data":data1})        
def add_category_process(request):
    msg=""
    if request.POST:
        t1 = request.POST["t1"]
        t2 = request.POST["t2"]
        
        cate.objects.create(catgerory_name=t1,catgerory_address=t2)
        msg="Registers successfuly"
        response = redirect('/ViewCategory')
        return response
    else:    
        msg = ""
    data1=cate.objects.all()
    return render(request,"AddCategory.html",{"msg":msg,"data":data1}) 
def ViewCategory(request):
    msg = ""
    data1=cate.objects.all()
    return render(request,"ViewCategory.html",{"msg":msg,"data":data1}) 
def delete_category(request):
    cate.objects.filter(catgerory_id=request.GET["id"]).delete()
    response = redirect('/List_Staff')
    return response
    
def ViewServices(request):
    msg = ""
    data1=ser.objects.all()
    return render(request,"ViewServices.html",{"msg":msg,"data":data1})
    
   
def ViewPayments(request):
    msg = ""
    id=request.GET["id"]
    data1=pay.objects.filter(servicerequest=id).all()
    return render(request,"ViewPayment.html",{"msg":msg,"data":data1})
def RequestService(request):
    msg = ""
    data1=stf.objects.all()
    return render(request,"RequestService.html",{"msg":msg,"data":data1}) 
def AddRequest(request):
        msg=""
        d=request.session['id'] 
        datal=log.objects.get(logid=d) 
        datau=usr.objects.get(Log_id=datal)
        #datax=usr.objects.get(Log_id=request.session["id"])
        if request.POST:
                ids=request.session["id"]
                
                t1 = request.POST["t1"]
                pl=log.objects.get(logid=t1) 
               
                t2 = request.POST["t2"]
                p2=cate.objects.get(catgerory_id=t2) 
                t3 = "2022-02-22"
                s1 = request.POST["s1"]
                s2 = request.POST["s2"]
                msg="Register sucessfully"
                ser.objects.create(service_type=s1,service_details=s2,reg_date=t3,request_date=t3,request_rating="4star",user=datau,request_status="pending",Provide_logid=pl,catgerory=p2)
        data1=ser.objects.filter(user_id=datau).all()
        return render(request, "ServiceHistory.html",{"msg":msg,"data":data1})

def ServiceHistory(request):
    msg = ""
    d=request.session['id'] 
    datal=log.objects.get(logid=d) 
    datau=usr.objects.get(Log_id=datal)
    data1=ser.objects.filter(user_id=datau).all()
    return render(request,"ServiceHistory.html",{"msg":msg,"data":data1}) 
def ServicePayments(request):
    msg = ""
    id=request.GET["id"]
    dataser=ser.objects.get(request_id=id) 
    data1=pay.objects.filter(servicerequest=dataser).all()
    return render(request,"ServicePayments.html",{"msg":msg,"data":data1})
def AddPayment(request):
        msg=""
        d=request.session['id'] 
        datal=log.objects.get(logid=d) 
        datau=usr.objects.get(Log_id=datal)
        #datax=usr.objects.get(Log_id=request.session["id"])
        if request.POST:
                ids=request.session["id"]
                
                t1 = 22
               
               
                t2 = request.POST["t1"]
                pl=ser.objects.get(request_id=t2) 
                t3 = 2000
                s1 = request.POST["s1"]
                s2 = request.POST["s2"]
                msg="Register sucessfully"
                pay.objects.create(amount=t3,pay_status="Payment Complete",servicerequest=pl,user=datau)
        data1=pay.objects.filter(user_id=datau).all()
        return render(request, "ServicePayments.html",{"msg":msg,"data":data1})
def ProviderComplaints(request):
        msg=""
        d=request.session['id'] 
        datal=log.objects.get(logid=d) 
        datau=stf.objects.get(Provide_logid=datal)
        #datax=usr.objects.get(Log_id=request.session["id"])
        if request.POST:
                ids=request.session["id"]
                
                t1 = request.POST["t1"]
                t2 = request.POST["t2"]
                t3 = "2022-02-22"
                msg="updated sucessfully"
                comp.objects.create(Complaint_subject=t1,Complaint_message=t2,Complaint_date=t3,Complaint_reply="not yet Seen",Provider=datau)
        data1=comp.objects.filter(Provider=datau).all()
        return render(request, "ProviderComplaints.html",{"msg":msg,"data":data1})
def providerService(request):
    msg = ""
    d=request.session['id'] 
    datau=log.objects.get(logid=d) 
    
    data1=ser.objects.filter(Provide_logid=datau).all()
    return render(request,"providerService.html",{"msg":msg,"data":data1}) 
def UpdateRequest(request):
        t2=request.GET["id"]
        #datax=usr.objects.get(Log_id=request.session["id"])
        msg="updated sucessfully"
        ser.objects.filter(request_id=t2).update(request_status="approve")
        d=request.session['id'] 
        datau=log.objects.get(logid=d) 
        data1=ser.objects.filter(Provide_logid=datau).all()
        response = redirect('/providerService')
        return response
def RequestPayments(request):
    msg = ""
    id=request.GET["id"]
    dataser=ser.objects.get(request_id=id) 
    data1=pay.objects.filter(servicerequest=dataser).all()
    return render(request,"RequestPayments.html",{"msg":msg,"data":data1})
