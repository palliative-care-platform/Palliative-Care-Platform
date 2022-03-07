from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
    path("",views.index,name="index"),
    path("index",views.index,name="index"),
    path("login",views.Login,name="login"),
    path("admin",views.admin,name="admin"),
    path("staff",views.staff,name='staff'),
    path("Logout",views.Logout,name='Logout'),
    path("Privacy",views.Privacy,name='Privacy'),
    path("List_Staff",views.List_Staff,name='List_Staff'),
    path("delete_staff",views.delete_staff,name='delete_staff'),
    path("complaints",views.complaints,name='complaints'),
    path("Feedback",views.Feedback,name='Feedback'),
    path("All_Users",views.All_Users,name='All_Users'),
    path("remove_usr",views.remove_usr,name='remove_usr'),
    path("Profile",views.Profile,name='Profile'),
    path("user",views.user,name='user'),
    path("User_Reg",views.User_Reg,name='User_Reg'),
    path("Provider_Reg",views.Provider_Reg,name='Provider_Reg'),
    path("register_user",views.register_user,name='register_user'),
    path("register_provider",views.register_provider,name='register_provider'),
    path("approve_provider",views.approve_provider,name='approve_provider'),
    path("add_category",views.add_category,name='add_category'),
    path("add_category_process",views.add_category_process,name='add_category_process'),
    path("ViewCategory",views.ViewCategory,name='ViewCategory'),
    path("delete_category",views.delete_category,name='delete_category'),
     path("ViewServices",views.ViewServices,name='ViewServices'),
     path("ViewPayments",views.ViewPayments,name='ViewPayments'),
     path("UserFeedback",views.UserFeedback,name='UserFeedback'),
     path("RequestService",views.RequestService,name='RequestService'),
     path("AddRequest",views.AddRequest,name='AddRequest'),
     path("ServiceHistory",views.ServiceHistory,name='ServiceHistory'),
     path("ServicePayments",views.ServicePayments,name='ServicePayments'),
     path("AddPayment",views.AddPayment,name='AddPayment'),
     path("ProviderComplaints",views.ProviderComplaints,name='ProviderComplaints'),
     path("providerService",views.providerService,name='providerService'),
     path("UpdateRequest",views.UpdateRequest,name='UpdateRequest'),
     path("RequestPayments",views.RequestPayments,name='RequestPayments'),
     
     
]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
