.class public Lcrc64a53bda60818f4436/MainApplication;
.super Lcrc6488302ad6e9e4df1a/MauiApplication;
.source "MainApplication.java"

# interfaces
.implements Lmono/android/IGCUserPeer;


# static fields
.field public static final __md_methods:Ljava/lang/String; = ""


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcrc6488302ad6e9e4df1a/MauiApplication;-><init>()V

    .line 18
    invoke-static {p0}, Lmono/MonoPackageManager;->setContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcrc64a53bda60818f4436/MainApplication;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrc64a53bda60818f4436/MainApplication;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcrc64a53bda60818f4436/MainApplication;->refList:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lcrc64a53bda60818f4436/MainApplication;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method
