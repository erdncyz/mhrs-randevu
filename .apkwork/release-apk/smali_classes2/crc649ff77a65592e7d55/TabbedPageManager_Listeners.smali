.class public Lcrc649ff77a65592e7d55/TabbedPageManager_Listeners;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "TabbedPageManager_Listeners.java"

# interfaces
.implements Lmono/android/IGCUserPeer;
.implements Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;
.implements Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_onPageSelected:(I)V:GetOnPageSelected_IHandler\nn_onTabReselected:(Lcom/google/android/material/tabs/TabLayout$Tab;)V:GetOnTabReselected_Lcom_google_android_material_tabs_TabLayout_Tab_Handler:Google.Android.Material.Tabs.TabLayout/IOnTabSelectedListenerInvoker, Xamarin.Google.Android.Material\nn_onTabSelected:(Lcom/google/android/material/tabs/TabLayout$Tab;)V:GetOnTabSelected_Lcom_google_android_material_tabs_TabLayout_Tab_Handler:Google.Android.Material.Tabs.TabLayout/IOnTabSelectedListenerInvoker, Xamarin.Google.Android.Material\nn_onTabUnselected:(Lcom/google/android/material/tabs/TabLayout$Tab;)V:GetOnTabUnselected_Lcom_google_android_material_tabs_TabLayout_Tab_Handler:Google.Android.Material.Tabs.TabLayout/IOnTabSelectedListenerInvoker, Xamarin.Google.Android.Material\nn_onNavigationItemSelected:(Landroid/view/MenuItem;)Z:GetOnNavigationItemSelected_Landroid_view_MenuItem_Handler:Google.Android.Material.Navigation.NavigationBarView/IOnItemSelectedListenerInvoker, Xamarin.Google.Android.Material\nn_onConfigureTab:(Lcom/google/android/material/tabs/TabLayout$Tab;I)V:GetOnConfigureTab_Lcom_google_android_material_tabs_TabLayout_Tab_IHandler:Google.Android.Material.Tabs.TabLayoutMediator/ITabConfigurationStrategyInvoker, Xamarin.Google.Android.Material\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Microsoft.Maui.Controls.Handlers.TabbedPageManager+Listeners, Microsoft.Maui.Controls"

    const-class v1, Lcrc649ff77a65592e7d55/TabbedPageManager_Listeners;

    const-string v2, "n_onPageSelected:(I)V:GetOnPageSelected_IHandler\nn_onTabReselected:(Lcom/google/android/material/tabs/TabLayout$Tab;)V:GetOnTabReselected_Lcom_google_android_material_tabs_TabLayout_Tab_Handler:Google.Android.Material.Tabs.TabLayout/IOnTabSelectedListenerInvoker, Xamarin.Google.Android.Material\nn_onTabSelected:(Lcom/google/android/material/tabs/TabLayout$Tab;)V:GetOnTabSelected_Lcom_google_android_material_tabs_TabLayout_Tab_Handler:Google.Android.Material.Tabs.TabLayout/IOnTabSelectedListenerInvoker, Xamarin.Google.Android.Material\nn_onTabUnselected:(Lcom/google/android/material/tabs/TabLayout$Tab;)V:GetOnTabUnselected_Lcom_google_android_material_tabs_TabLayout_Tab_Handler:Google.Android.Material.Tabs.TabLayout/IOnTabSelectedListenerInvoker, Xamarin.Google.Android.Material\nn_onNavigationItemSelected:(Landroid/view/MenuItem;)Z:GetOnNavigationItemSelected_Landroid_view_MenuItem_Handler:Google.Android.Material.Navigation.NavigationBarView/IOnItemSelectedListenerInvoker, Xamarin.Google.Android.Material\nn_onConfigureTab:(Lcom/google/android/material/tabs/TabLayout$Tab;I)V:GetOnConfigureTab_Lcom_google_android_material_tabs_TabLayout_Tab_IHandler:Google.Android.Material.Tabs.TabLayoutMediator/ITabConfigurationStrategyInvoker, Xamarin.Google.Android.Material\n"

    .line 23
    invoke-static {v0, v1, v2}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc649ff77a65592e7d55/TabbedPageManager_Listeners;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Microsoft.Maui.Controls.Handlers.TabbedPageManager+Listeners, Microsoft.Maui.Controls"

    const-string v2, ""

    .line 31
    invoke-static {v1, v2, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native n_onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
.end method

.method private native n_onNavigationItemSelected(Landroid/view/MenuItem;)Z
.end method

.method private native n_onPageSelected(I)V
.end method

.method private native n_onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
.end method

.method private native n_onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
.end method

.method private native n_onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
.end method


# virtual methods
.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcrc649ff77a65592e7d55/TabbedPageManager_Listeners;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrc649ff77a65592e7d55/TabbedPageManager_Listeners;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcrc649ff77a65592e7d55/TabbedPageManager_Listeners;->refList:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lcrc649ff77a65592e7d55/TabbedPageManager_Listeners;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcrc649ff77a65592e7d55/TabbedPageManager_Listeners;->n_onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcrc649ff77a65592e7d55/TabbedPageManager_Listeners;->n_onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcrc649ff77a65592e7d55/TabbedPageManager_Listeners;->n_onPageSelected(I)V

    return-void
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcrc649ff77a65592e7d55/TabbedPageManager_Listeners;->n_onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcrc649ff77a65592e7d55/TabbedPageManager_Listeners;->n_onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcrc649ff77a65592e7d55/TabbedPageManager_Listeners;->n_onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method
