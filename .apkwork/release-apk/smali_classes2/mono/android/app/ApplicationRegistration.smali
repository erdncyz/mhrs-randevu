.class public Lmono/android/app/ApplicationRegistration;
.super Ljava/lang/Object;
.source "ApplicationRegistration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerApplications()V
    .locals 3

    .line 8
    const-class v0, Lcrc6488302ad6e9e4df1a/MauiApplication;

    sget-object v1, Lcrc6488302ad6e9e4df1a/MauiApplication;->__md_methods:Ljava/lang/String;

    const-string v2, "Microsoft.Maui.MauiApplication, Microsoft.Maui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null"

    invoke-static {v2, v0, v1}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 9
    const-class v0, Lcrc64a53bda60818f4436/MainApplication;

    sget-object v1, Lcrc64a53bda60818f4436/MainApplication;->__md_methods:Ljava/lang/String;

    const-string v2, "MHRSMobileApp.MainApplication, MHRSMobileApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null"

    invoke-static {v2, v0, v1}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
