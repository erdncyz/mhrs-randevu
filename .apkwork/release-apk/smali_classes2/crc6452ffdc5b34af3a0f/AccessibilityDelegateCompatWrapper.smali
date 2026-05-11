.class public Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "AccessibilityDelegateCompatWrapper.java"

# interfaces
.implements Lmono/android/IGCUserPeer;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_onInitializeAccessibilityNodeInfo:(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V:GetOnInitializeAccessibilityNodeInfo_Landroid_view_View_Landroidx_core_view_accessibility_AccessibilityNodeInfoCompat_Handler\nn_sendAccessibilityEvent:(Landroid/view/View;I)V:GetSendAccessibilityEvent_Landroid_view_View_IHandler\nn_sendAccessibilityEventUnchecked:(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V:GetSendAccessibilityEventUnchecked_Landroid_view_View_Landroid_view_accessibility_AccessibilityEvent_Handler\nn_dispatchPopulateAccessibilityEvent:(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z:GetDispatchPopulateAccessibilityEvent_Landroid_view_View_Landroid_view_accessibility_AccessibilityEvent_Handler\nn_onPopulateAccessibilityEvent:(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V:GetOnPopulateAccessibilityEvent_Landroid_view_View_Landroid_view_accessibility_AccessibilityEvent_Handler\nn_onInitializeAccessibilityEvent:(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V:GetOnInitializeAccessibilityEvent_Landroid_view_View_Landroid_view_accessibility_AccessibilityEvent_Handler\nn_onRequestSendAccessibilityEvent:(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z:GetOnRequestSendAccessibilityEvent_Landroid_view_ViewGroup_Landroid_view_View_Landroid_view_accessibility_AccessibilityEvent_Handler\nn_performAccessibilityAction:(Landroid/view/View;ILandroid/os/Bundle;)Z:GetPerformAccessibilityAction_Landroid_view_View_ILandroid_os_Bundle_Handler\nn_getAccessibilityNodeProvider:(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;:GetGetAccessibilityNodeProvider_Landroid_view_View_Handler\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Microsoft.Maui.Platform.AccessibilityDelegateCompatWrapper, Microsoft.Maui"

    const-class v1, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;

    const-string v2, "n_onInitializeAccessibilityNodeInfo:(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V:GetOnInitializeAccessibilityNodeInfo_Landroid_view_View_Landroidx_core_view_accessibility_AccessibilityNodeInfoCompat_Handler\nn_sendAccessibilityEvent:(Landroid/view/View;I)V:GetSendAccessibilityEvent_Landroid_view_View_IHandler\nn_sendAccessibilityEventUnchecked:(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V:GetSendAccessibilityEventUnchecked_Landroid_view_View_Landroid_view_accessibility_AccessibilityEvent_Handler\nn_dispatchPopulateAccessibilityEvent:(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z:GetDispatchPopulateAccessibilityEvent_Landroid_view_View_Landroid_view_accessibility_AccessibilityEvent_Handler\nn_onPopulateAccessibilityEvent:(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V:GetOnPopulateAccessibilityEvent_Landroid_view_View_Landroid_view_accessibility_AccessibilityEvent_Handler\nn_onInitializeAccessibilityEvent:(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V:GetOnInitializeAccessibilityEvent_Landroid_view_View_Landroid_view_accessibility_AccessibilityEvent_Handler\nn_onRequestSendAccessibilityEvent:(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z:GetOnRequestSendAccessibilityEvent_Landroid_view_ViewGroup_Landroid_view_View_Landroid_view_accessibility_AccessibilityEvent_Handler\nn_performAccessibilityAction:(Landroid/view/View;ILandroid/os/Bundle;)Z:GetPerformAccessibilityAction_Landroid_view_View_ILandroid_os_Bundle_Handler\nn_getAccessibilityNodeProvider:(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;:GetGetAccessibilityNodeProvider_Landroid_view_View_Handler\n"

    .line 23
    invoke-static {v0, v1, v2}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Microsoft.Maui.Platform.AccessibilityDelegateCompatWrapper, Microsoft.Maui"

    const-string v2, ""

    .line 31
    invoke-static {v1, v2, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/view/View$AccessibilityDelegate;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Microsoft.Maui.Platform.AccessibilityDelegateCompatWrapper, Microsoft.Maui"

    const-string v1, "Android.Views.View+AccessibilityDelegate, Mono.Android"

    .line 40
    invoke-static {p1, v1, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Microsoft.Maui.Platform.AccessibilityDelegateCompatWrapper, Microsoft.Maui"

    const-string v1, "AndroidX.Core.View.AccessibilityDelegateCompat, Xamarin.AndroidX.Core"

    .line 48
    invoke-static {p1, v1, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native n_dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.end method

.method private native n_getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.end method

.method private native n_onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method private native n_onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method private native n_onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method private native n_onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.end method

.method private native n_performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
.end method

.method private native n_sendAccessibilityEvent(Landroid/view/View;I)V
.end method

.method private native n_sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;->n_dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;->n_getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p1

    return-object p1
.end method

.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;->refList:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;->n_onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;->n_onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;->n_onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;->n_onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;->n_performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;->n_sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcrc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper;->n_sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
