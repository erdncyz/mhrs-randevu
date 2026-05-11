.class public abstract Lcrc6488302ad6e9e4df1a/MauiApplication;
.super Landroid/app/Application;
.source "MauiApplication.java"

# interfaces
.implements Lmono/android/IGCUserPeer;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_onCreate:()V:GetOnCreateHandler\nn_onLowMemory:()V:GetOnLowMemoryHandler\nn_onTrimMemory:(I)V:GetOnTrimMemory_IHandler\nn_onConfigurationChanged:(Landroid/content/res/Configuration;)V:GetOnConfigurationChanged_Landroid_content_res_Configuration_Handler\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 22
    invoke-static {p0}, Lmono/MonoPackageManager;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method private native n_onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method private native n_onCreate()V
.end method

.method private native n_onLowMemory()V
.end method

.method private native n_onTrimMemory(I)V
.end method


# virtual methods
.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcrc6488302ad6e9e4df1a/MauiApplication;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrc6488302ad6e9e4df1a/MauiApplication;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcrc6488302ad6e9e4df1a/MauiApplication;->refList:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lcrc6488302ad6e9e4df1a/MauiApplication;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcrc6488302ad6e9e4df1a/MauiApplication;->n_onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcrc6488302ad6e9e4df1a/MauiApplication;->n_onCreate()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcrc6488302ad6e9e4df1a/MauiApplication;->n_onLowMemory()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcrc6488302ad6e9e4df1a/MauiApplication;->n_onTrimMemory(I)V

    return-void
.end method
