.class public Lmono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor;
.super Ljava/lang/Object;
.source "FragmentManager_OnBackStackChangedListenerImplementor.java"

# interfaces
.implements Lmono/android/IGCUserPeer;
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_onBackStackChanged:()V:GetOnBackStackChangedHandler:AndroidX.Fragment.App.FragmentManager/IOnBackStackChangedListenerInvoker, Xamarin.AndroidX.Fragment\nn_onBackStackChangeCommitted:(Landroidx/fragment/app/Fragment;Z)V:GetOnBackStackChangeCommitted_Landroidx_fragment_app_Fragment_ZHandler:AndroidX.Fragment.App.FragmentManager/IOnBackStackChangedListener, Xamarin.AndroidX.Fragment\nn_onBackStackChangeStarted:(Landroidx/fragment/app/Fragment;Z)V:GetOnBackStackChangeStarted_Landroidx_fragment_app_Fragment_ZHandler:AndroidX.Fragment.App.FragmentManager/IOnBackStackChangedListener, Xamarin.AndroidX.Fragment\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "AndroidX.Fragment.App.FragmentManager+IOnBackStackChangedListenerImplementor, Xamarin.AndroidX.Fragment"

    const-class v1, Lmono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor;

    const-string v2, "n_onBackStackChanged:()V:GetOnBackStackChangedHandler:AndroidX.Fragment.App.FragmentManager/IOnBackStackChangedListenerInvoker, Xamarin.AndroidX.Fragment\nn_onBackStackChangeCommitted:(Landroidx/fragment/app/Fragment;Z)V:GetOnBackStackChangeCommitted_Landroidx_fragment_app_Fragment_ZHandler:AndroidX.Fragment.App.FragmentManager/IOnBackStackChangedListener, Xamarin.AndroidX.Fragment\nn_onBackStackChangeStarted:(Landroidx/fragment/app/Fragment;Z)V:GetOnBackStackChangeStarted_Landroidx_fragment_app_Fragment_ZHandler:AndroidX.Fragment.App.FragmentManager/IOnBackStackChangedListener, Xamarin.AndroidX.Fragment\n"

    .line 18
    invoke-static {v0, v1, v2}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lmono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AndroidX.Fragment.App.FragmentManager+IOnBackStackChangedListenerImplementor, Xamarin.AndroidX.Fragment"

    const-string v2, ""

    .line 26
    invoke-static {v1, v2, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native n_onBackStackChangeCommitted(Landroidx/fragment/app/Fragment;Z)V
.end method

.method private native n_onBackStackChangeStarted(Landroidx/fragment/app/Fragment;Z)V
.end method

.method private native n_onBackStackChanged()V
.end method


# virtual methods
.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lmono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor;->refList:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lmono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public onBackStackChangeCommitted(Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lmono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor;->n_onBackStackChangeCommitted(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public onBackStackChangeStarted(Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lmono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor;->n_onBackStackChangeStarted(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lmono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor;->n_onBackStackChanged()V

    return-void
.end method
