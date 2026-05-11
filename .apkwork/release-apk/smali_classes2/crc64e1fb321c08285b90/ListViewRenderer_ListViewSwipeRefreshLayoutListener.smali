.class public Lcrc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener;
.super Ljava/lang/Object;
.source "ListViewRenderer_ListViewSwipeRefreshLayoutListener.java"

# interfaces
.implements Lmono/android/IGCUserPeer;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_onRefresh:()V:GetOnRefreshHandler:AndroidX.SwipeRefreshLayout.Widget.SwipeRefreshLayout/IOnRefreshListenerInvoker, Xamarin.AndroidX.SwipeRefreshLayout\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Microsoft.Maui.Controls.Handlers.Compatibility.ListViewRenderer+ListViewSwipeRefreshLayoutListener, Microsoft.Maui.Controls"

    const-class v1, Lcrc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener;

    const-string v2, "n_onRefresh:()V:GetOnRefreshHandler:AndroidX.SwipeRefreshLayout.Widget.SwipeRefreshLayout/IOnRefreshListenerInvoker, Xamarin.AndroidX.SwipeRefreshLayout\n"

    .line 16
    invoke-static {v0, v1, v2}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Microsoft.Maui.Controls.Handlers.Compatibility.ListViewRenderer+ListViewSwipeRefreshLayoutListener, Microsoft.Maui.Controls"

    const-string v2, ""

    .line 24
    invoke-static {v1, v2, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcrc64e1fb321c08285b90/ListViewRenderer;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Microsoft.Maui.Controls.Handlers.Compatibility.ListViewRenderer+ListViewSwipeRefreshLayoutListener, Microsoft.Maui.Controls"

    const-string v1, "Microsoft.Maui.Controls.Handlers.Compatibility.ListViewRenderer, Microsoft.Maui.Controls"

    .line 32
    invoke-static {p1, v1, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native n_onRefresh()V
.end method


# virtual methods
.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcrc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcrc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener;->refList:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lcrc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcrc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener;->n_onRefresh()V

    return-void
.end method
