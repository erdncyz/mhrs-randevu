.class public Lmono/android/net/nsd/NsdManager_ResolveListenerImplementor;
.super Ljava/lang/Object;
.source "NsdManager_ResolveListenerImplementor.java"

# interfaces
.implements Lmono/android/IGCUserPeer;
.implements Landroid/net/nsd/NsdManager$ResolveListener;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_onResolveFailed:(Landroid/net/nsd/NsdServiceInfo;I)V:GetOnResolveFailed_Landroid_net_nsd_NsdServiceInfo_IHandler:Android.Net.Nsd.NsdManager/IResolveListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\nn_onServiceResolved:(Landroid/net/nsd/NsdServiceInfo;)V:GetOnServiceResolved_Landroid_net_nsd_NsdServiceInfo_Handler:Android.Net.Nsd.NsdManager/IResolveListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\nn_onResolutionStopped:(Landroid/net/nsd/NsdServiceInfo;)V:GetOnResolutionStopped_Landroid_net_nsd_NsdServiceInfo_Handler:Android.Net.Nsd.NsdManager/IResolveListener, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\nn_onStopResolutionFailed:(Landroid/net/nsd/NsdServiceInfo;I)V:GetOnStopResolutionFailed_Landroid_net_nsd_NsdServiceInfo_IHandler:Android.Net.Nsd.NsdManager/IResolveListener, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Android.Net.Nsd.NsdManager+IResolveListenerImplementor, Mono.Android"

    const-class v1, Lmono/android/net/nsd/NsdManager_ResolveListenerImplementor;

    const-string v2, "n_onResolveFailed:(Landroid/net/nsd/NsdServiceInfo;I)V:GetOnResolveFailed_Landroid_net_nsd_NsdServiceInfo_IHandler:Android.Net.Nsd.NsdManager/IResolveListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\nn_onServiceResolved:(Landroid/net/nsd/NsdServiceInfo;)V:GetOnServiceResolved_Landroid_net_nsd_NsdServiceInfo_Handler:Android.Net.Nsd.NsdManager/IResolveListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\nn_onResolutionStopped:(Landroid/net/nsd/NsdServiceInfo;)V:GetOnResolutionStopped_Landroid_net_nsd_NsdServiceInfo_Handler:Android.Net.Nsd.NsdManager/IResolveListener, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\nn_onStopResolutionFailed:(Landroid/net/nsd/NsdServiceInfo;I)V:GetOnStopResolutionFailed_Landroid_net_nsd_NsdServiceInfo_IHandler:Android.Net.Nsd.NsdManager/IResolveListener, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n"

    .line 19
    invoke-static {v0, v1, v2}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lmono/android/net/nsd/NsdManager_ResolveListenerImplementor;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Android.Net.Nsd.NsdManager+IResolveListenerImplementor, Mono.Android"

    const-string v2, ""

    .line 27
    invoke-static {v1, v2, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native n_onResolutionStopped(Landroid/net/nsd/NsdServiceInfo;)V
.end method

.method private native n_onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V
.end method

.method private native n_onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V
.end method

.method private native n_onStopResolutionFailed(Landroid/net/nsd/NsdServiceInfo;I)V
.end method


# virtual methods
.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmono/android/net/nsd/NsdManager_ResolveListenerImplementor;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmono/android/net/nsd/NsdManager_ResolveListenerImplementor;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lmono/android/net/nsd/NsdManager_ResolveListenerImplementor;->refList:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lmono/android/net/nsd/NsdManager_ResolveListenerImplementor;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public onResolutionStopped(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lmono/android/net/nsd/NsdManager_ResolveListenerImplementor;->n_onResolutionStopped(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method public onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lmono/android/net/nsd/NsdManager_ResolveListenerImplementor;->n_onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    return-void
.end method

.method public onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lmono/android/net/nsd/NsdManager_ResolveListenerImplementor;->n_onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method public onStopResolutionFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lmono/android/net/nsd/NsdManager_ResolveListenerImplementor;->n_onStopResolutionFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    return-void
.end method
