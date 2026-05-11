.class public Lmono/android/speech/ModelDownloadListenerImplementor;
.super Ljava/lang/Object;
.source "ModelDownloadListenerImplementor.java"

# interfaces
.implements Lmono/android/IGCUserPeer;
.implements Landroid/speech/ModelDownloadListener;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_onError:(I)V:GetOnError_IHandler:Android.Speech.IModelDownloadListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\nn_onProgress:(I)V:GetOnProgress_IHandler:Android.Speech.IModelDownloadListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\nn_onScheduled:()V:GetOnScheduledHandler:Android.Speech.IModelDownloadListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\nn_onSuccess:()V:GetOnSuccessHandler:Android.Speech.IModelDownloadListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Android.Speech.IModelDownloadListenerImplementor, Mono.Android"

    const-class v1, Lmono/android/speech/ModelDownloadListenerImplementor;

    const-string v2, "n_onError:(I)V:GetOnError_IHandler:Android.Speech.IModelDownloadListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\nn_onProgress:(I)V:GetOnProgress_IHandler:Android.Speech.IModelDownloadListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\nn_onScheduled:()V:GetOnScheduledHandler:Android.Speech.IModelDownloadListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\nn_onSuccess:()V:GetOnSuccessHandler:Android.Speech.IModelDownloadListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n"

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

    const-class v1, Lmono/android/speech/ModelDownloadListenerImplementor;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Android.Speech.IModelDownloadListenerImplementor, Mono.Android"

    const-string v2, ""

    .line 27
    invoke-static {v1, v2, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native n_onError(I)V
.end method

.method private native n_onProgress(I)V
.end method

.method private native n_onScheduled()V
.end method

.method private native n_onSuccess()V
.end method


# virtual methods
.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmono/android/speech/ModelDownloadListenerImplementor;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmono/android/speech/ModelDownloadListenerImplementor;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lmono/android/speech/ModelDownloadListenerImplementor;->refList:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lmono/android/speech/ModelDownloadListenerImplementor;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lmono/android/speech/ModelDownloadListenerImplementor;->n_onError(I)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lmono/android/speech/ModelDownloadListenerImplementor;->n_onProgress(I)V

    return-void
.end method

.method public onScheduled()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lmono/android/speech/ModelDownloadListenerImplementor;->n_onScheduled()V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lmono/android/speech/ModelDownloadListenerImplementor;->n_onSuccess()V

    return-void
.end method
