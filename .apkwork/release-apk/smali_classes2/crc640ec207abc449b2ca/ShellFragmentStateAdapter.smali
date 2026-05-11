.class public Lcrc640ec207abc449b2ca/ShellFragmentStateAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "ShellFragmentStateAdapter.java"

# interfaces
.implements Lmono/android/IGCUserPeer;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_getItemCount:()I:GetGetItemCountHandler\nn_createFragment:(I)Landroidx/fragment/app/Fragment;:GetCreateFragment_IHandler\nn_getItemId:(I)J:GetGetItemId_IHandler\nn_containsItem:(J)Z:GetContainsItem_JHandler\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Microsoft.Maui.Controls.Platform.Compatibility.ShellFragmentStateAdapter, Microsoft.Maui.Controls"

    const-class v1, Lcrc640ec207abc449b2ca/ShellFragmentStateAdapter;

    const-string v2, "n_getItemCount:()I:GetGetItemCountHandler\nn_createFragment:(I)Landroidx/fragment/app/Fragment;:GetCreateFragment_IHandler\nn_getItemId:(I)J:GetGetItemId_IHandler\nn_containsItem:(J)Z:GetContainsItem_JHandler\n"

    .line 18
    invoke-static {v0, v1, v2}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc640ec207abc449b2ca/ShellFragmentStateAdapter;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Microsoft.Maui.Controls.Platform.Compatibility.ShellFragmentStateAdapter, Microsoft.Maui.Controls"

    const-string v1, "AndroidX.Fragment.App.Fragment, Xamarin.AndroidX.Fragment"

    .line 26
    invoke-static {p1, v1, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc640ec207abc449b2ca/ShellFragmentStateAdapter;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Microsoft.Maui.Controls.Platform.Compatibility.ShellFragmentStateAdapter, Microsoft.Maui.Controls"

    const-string v1, "AndroidX.Fragment.App.FragmentActivity, Xamarin.AndroidX.Fragment"

    .line 35
    invoke-static {p1, v1, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc640ec207abc449b2ca/ShellFragmentStateAdapter;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "Microsoft.Maui.Controls.Platform.Compatibility.ShellFragmentStateAdapter, Microsoft.Maui.Controls"

    const-string p2, "AndroidX.Fragment.App.FragmentManager, Xamarin.AndroidX.Fragment:AndroidX.Lifecycle.Lifecycle, Xamarin.AndroidX.Lifecycle.Common"

    .line 44
    invoke-static {p1, p2, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native n_containsItem(J)Z
.end method

.method private native n_createFragment(I)Landroidx/fragment/app/Fragment;
.end method

.method private native n_getItemCount()I
.end method

.method private native n_getItemId(I)J
.end method


# virtual methods
.method public containsItem(J)Z
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcrc640ec207abc449b2ca/ShellFragmentStateAdapter;->n_containsItem(J)Z

    move-result p1

    return p1
.end method

.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcrc640ec207abc449b2ca/ShellFragmentStateAdapter;->n_createFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 51
    invoke-direct {p0}, Lcrc640ec207abc449b2ca/ShellFragmentStateAdapter;->n_getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 67
    invoke-direct {p0, p1}, Lcrc640ec207abc449b2ca/ShellFragmentStateAdapter;->n_getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcrc640ec207abc449b2ca/ShellFragmentStateAdapter;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrc640ec207abc449b2ca/ShellFragmentStateAdapter;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcrc640ec207abc449b2ca/ShellFragmentStateAdapter;->refList:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lcrc640ec207abc449b2ca/ShellFragmentStateAdapter;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method
