.class public Lcrc645ced3357a7ae49be/BackgroundScanService;
.super Landroid/app/Service;
.source "BackgroundScanService.java"

# interfaces
.implements Lmono/android/IGCUserPeer;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_onBind:(Landroid/content/Intent;)Landroid/os/IBinder;:GetOnBind_Landroid_content_Intent_Handler\nn_onStartCommand:(Landroid/content/Intent;II)I:GetOnStartCommand_Landroid_content_Intent_IIHandler\nn_onDestroy:()V:GetOnDestroyHandler\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "MHRSMobileApp.Platforms.Android.BackgroundScanService, MHRSMobileApp"

    const-class v1, Lcrc645ced3357a7ae49be/BackgroundScanService;

    const-string v2, "n_onBind:(Landroid/content/Intent;)Landroid/os/IBinder;:GetOnBind_Landroid_content_Intent_Handler\nn_onStartCommand:(Landroid/content/Intent;II)I:GetOnStartCommand_Landroid_content_Intent_IIHandler\nn_onDestroy:()V:GetOnDestroyHandler\n"

    .line 17
    invoke-static {v0, v1, v2}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc645ced3357a7ae49be/BackgroundScanService;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MHRSMobileApp.Platforms.Android.BackgroundScanService, MHRSMobileApp"

    const-string v2, ""

    .line 25
    invoke-static {v1, v2, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native n_onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method private native n_onDestroy()V
.end method

.method private native n_onStartCommand(Landroid/content/Intent;II)I
.end method


# virtual methods
.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcrc645ced3357a7ae49be/BackgroundScanService;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrc645ced3357a7ae49be/BackgroundScanService;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcrc645ced3357a7ae49be/BackgroundScanService;->refList:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lcrc645ced3357a7ae49be/BackgroundScanService;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcrc645ced3357a7ae49be/BackgroundScanService;->n_onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcrc645ced3357a7ae49be/BackgroundScanService;->n_onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcrc645ced3357a7ae49be/BackgroundScanService;->n_onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
