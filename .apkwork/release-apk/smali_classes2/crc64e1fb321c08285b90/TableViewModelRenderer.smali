.class public Lcrc64e1fb321c08285b90/TableViewModelRenderer;
.super Lcrc64e1fb321c08285b90/CellAdapter;
.source "TableViewModelRenderer.java"

# interfaces
.implements Lmono/android/IGCUserPeer;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_getCount:()I:GetGetCountHandler\nn_getItem:(I)Ljava/lang/Object;:GetGetItem_IHandler\nn_getViewTypeCount:()I:GetGetViewTypeCountHandler\nn_getItemViewType:(I)I:GetGetItemViewType_IHandler\nn_areAllItemsEnabled:()Z:GetAreAllItemsEnabledHandler\nn_getItemId:(I)J:GetGetItemId_IHandler\nn_getView:(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;:GetGetView_ILandroid_view_View_Landroid_view_ViewGroup_Handler\nn_isEnabled:(I)Z:GetIsEnabled_IHandler\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Microsoft.Maui.Controls.Handlers.Compatibility.TableViewModelRenderer, Microsoft.Maui.Controls"

    const-class v1, Lcrc64e1fb321c08285b90/TableViewModelRenderer;

    const-string v2, "n_getCount:()I:GetGetCountHandler\nn_getItem:(I)Ljava/lang/Object;:GetGetItem_IHandler\nn_getViewTypeCount:()I:GetGetViewTypeCountHandler\nn_getItemViewType:(I)I:GetGetItemViewType_IHandler\nn_areAllItemsEnabled:()Z:GetAreAllItemsEnabledHandler\nn_getItemId:(I)J:GetGetItemId_IHandler\nn_getView:(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;:GetGetView_ILandroid_view_View_Landroid_view_ViewGroup_Handler\nn_isEnabled:(I)Z:GetIsEnabled_IHandler\n"

    .line 22
    invoke-static {v0, v1, v2}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Lcrc64e1fb321c08285b90/CellAdapter;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc64e1fb321c08285b90/TableViewModelRenderer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Microsoft.Maui.Controls.Handlers.Compatibility.TableViewModelRenderer, Microsoft.Maui.Controls"

    const-string v2, ""

    .line 30
    invoke-static {v1, v2, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcrc64e1fb321c08285b90/CellAdapter;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc64e1fb321c08285b90/TableViewModelRenderer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Microsoft.Maui.Controls.Handlers.Compatibility.TableViewModelRenderer, Microsoft.Maui.Controls"

    const-string v1, "Android.Content.Context, Mono.Android"

    .line 38
    invoke-static {p1, v1, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native n_areAllItemsEnabled()Z
.end method

.method private native n_getCount()I
.end method

.method private native n_getItem(I)Ljava/lang/Object;
.end method

.method private native n_getItemId(I)J
.end method

.method private native n_getItemViewType(I)I
.end method

.method private native n_getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method private native n_getViewTypeCount()I
.end method

.method private native n_isEnabled(I)Z
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 77
    invoke-direct {p0}, Lcrc64e1fb321c08285b90/TableViewModelRenderer;->n_areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 45
    invoke-direct {p0}, Lcrc64e1fb321c08285b90/TableViewModelRenderer;->n_getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcrc64e1fb321c08285b90/TableViewModelRenderer;->n_getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 85
    invoke-direct {p0, p1}, Lcrc64e1fb321c08285b90/TableViewModelRenderer;->n_getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcrc64e1fb321c08285b90/TableViewModelRenderer;->n_getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcrc64e1fb321c08285b90/TableViewModelRenderer;->n_getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 61
    invoke-direct {p0}, Lcrc64e1fb321c08285b90/TableViewModelRenderer;->n_getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcrc64e1fb321c08285b90/TableViewModelRenderer;->n_isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcrc64e1fb321c08285b90/TableViewModelRenderer;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrc64e1fb321c08285b90/TableViewModelRenderer;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcrc64e1fb321c08285b90/TableViewModelRenderer;->refList:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lcrc64e1fb321c08285b90/TableViewModelRenderer;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method
