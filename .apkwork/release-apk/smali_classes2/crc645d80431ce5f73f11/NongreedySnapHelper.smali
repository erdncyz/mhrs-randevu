.class public abstract Lcrc645d80431ce5f73f11/NongreedySnapHelper;
.super Landroidx/recyclerview/widget/LinearSnapHelper;
.source "NongreedySnapHelper.java"

# interfaces
.implements Lmono/android/IGCUserPeer;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_attachToRecyclerView:(Landroidx/recyclerview/widget/RecyclerView;)V:GetAttachToRecyclerView_Landroidx_recyclerview_widget_RecyclerView_Handler\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Microsoft.Maui.Controls.Handlers.Items.NongreedySnapHelper, Microsoft.Maui.Controls"

    const-class v1, Lcrc645d80431ce5f73f11/NongreedySnapHelper;

    const-string v2, "n_attachToRecyclerView:(Landroidx/recyclerview/widget/RecyclerView;)V:GetAttachToRecyclerView_Landroidx_recyclerview_widget_RecyclerView_Handler\n"

    .line 15
    invoke-static {v0, v1, v2}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc645d80431ce5f73f11/NongreedySnapHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Microsoft.Maui.Controls.Handlers.Items.NongreedySnapHelper, Microsoft.Maui.Controls"

    const-string v2, ""

    .line 23
    invoke-static {v1, v2, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native n_attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcrc645d80431ce5f73f11/NongreedySnapHelper;->n_attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcrc645d80431ce5f73f11/NongreedySnapHelper;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrc645d80431ce5f73f11/NongreedySnapHelper;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcrc645d80431ce5f73f11/NongreedySnapHelper;->refList:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lcrc645d80431ce5f73f11/NongreedySnapHelper;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method
