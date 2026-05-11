.class public Lcrc640ec207abc449b2ca/ShellSectionRenderer;
.super Landroidx/fragment/app/Fragment;
.source "ShellSectionRenderer.java"

# interfaces
.implements Lmono/android/IGCUserPeer;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_onCreateView:(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;:GetOnCreateView_Landroid_view_LayoutInflater_Landroid_view_ViewGroup_Landroid_os_Bundle_Handler\nn_onDestroy:()V:GetOnDestroyHandler\nn_onClick:(Landroid/view/View;)V:GetOnClick_Landroid_view_View_Handler:Android.Views.View/IOnClickListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\nn_onConfigureTab:(Lcom/google/android/material/tabs/TabLayout$Tab;I)V:GetOnConfigureTab_Lcom_google_android_material_tabs_TabLayout_Tab_IHandler:Google.Android.Material.Tabs.TabLayoutMediator/ITabConfigurationStrategyInvoker, Xamarin.Google.Android.Material\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRenderer, Microsoft.Maui.Controls"

    const-class v1, Lcrc640ec207abc449b2ca/ShellSectionRenderer;

    const-string v2, "n_onCreateView:(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;:GetOnCreateView_Landroid_view_LayoutInflater_Landroid_view_ViewGroup_Landroid_os_Bundle_Handler\nn_onDestroy:()V:GetOnDestroyHandler\nn_onClick:(Landroid/view/View;)V:GetOnClick_Landroid_view_View_Handler:Android.Views.View/IOnClickListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\nn_onConfigureTab:(Lcom/google/android/material/tabs/TabLayout$Tab;I)V:GetOnConfigureTab_Lcom_google_android_material_tabs_TabLayout_Tab_IHandler:Google.Android.Material.Tabs.TabLayoutMediator/ITabConfigurationStrategyInvoker, Xamarin.Google.Android.Material\n"

    .line 20
    invoke-static {v0, v1, v2}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc640ec207abc449b2ca/ShellSectionRenderer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRenderer, Microsoft.Maui.Controls"

    const-string v2, ""

    .line 28
    invoke-static {v1, v2, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc640ec207abc449b2ca/ShellSectionRenderer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRenderer, Microsoft.Maui.Controls"

    const-string v1, "System.Int32, System.Private.CoreLib"

    invoke-static {p1, v1, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native n_onClick(Landroid/view/View;)V
.end method

.method private native n_onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
.end method

.method private native n_onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method private native n_onDestroy()V
.end method


# virtual methods
.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcrc640ec207abc449b2ca/ShellSectionRenderer;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrc640ec207abc449b2ca/ShellSectionRenderer;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcrc640ec207abc449b2ca/ShellSectionRenderer;->refList:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lcrc640ec207abc449b2ca/ShellSectionRenderer;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcrc640ec207abc449b2ca/ShellSectionRenderer;->n_onClick(Landroid/view/View;)V

    return-void
.end method

.method public onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcrc640ec207abc449b2ca/ShellSectionRenderer;->n_onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcrc640ec207abc449b2ca/ShellSectionRenderer;->n_onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcrc640ec207abc449b2ca/ShellSectionRenderer;->n_onDestroy()V

    return-void
.end method
