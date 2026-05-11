.class public Lcrc645d80431ce5f73f11/CarouselViewOnScrollListener;
.super Lcrc645d80431ce5f73f11/RecyclerViewScrollListener_2;
.source "CarouselViewOnScrollListener.java"

# interfaces
.implements Lmono/android/IGCUserPeer;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_onScrollStateChanged:(Landroidx/recyclerview/widget/RecyclerView;I)V:GetOnScrollStateChanged_Landroidx_recyclerview_widget_RecyclerView_IHandler\nn_onScrolled:(Landroidx/recyclerview/widget/RecyclerView;II)V:GetOnScrolled_Landroidx_recyclerview_widget_RecyclerView_IIHandler\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Microsoft.Maui.Controls.Handlers.Items.CarouselViewOnScrollListener, Microsoft.Maui.Controls"

    const-class v1, Lcrc645d80431ce5f73f11/CarouselViewOnScrollListener;

    const-string v2, "n_onScrollStateChanged:(Landroidx/recyclerview/widget/RecyclerView;I)V:GetOnScrollStateChanged_Landroidx_recyclerview_widget_RecyclerView_IHandler\nn_onScrolled:(Landroidx/recyclerview/widget/RecyclerView;II)V:GetOnScrolled_Landroidx_recyclerview_widget_RecyclerView_IIHandler\n"

    .line 16
    invoke-static {v0, v1, v2}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Lcrc645d80431ce5f73f11/RecyclerViewScrollListener_2;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc645d80431ce5f73f11/CarouselViewOnScrollListener;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Microsoft.Maui.Controls.Handlers.Items.CarouselViewOnScrollListener, Microsoft.Maui.Controls"

    const-string v2, ""

    .line 24
    invoke-static {v1, v2, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native n_onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
.end method

.method private native n_onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
.end method


# virtual methods
.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcrc645d80431ce5f73f11/CarouselViewOnScrollListener;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrc645d80431ce5f73f11/CarouselViewOnScrollListener;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcrc645d80431ce5f73f11/CarouselViewOnScrollListener;->refList:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lcrc645d80431ce5f73f11/CarouselViewOnScrollListener;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcrc645d80431ce5f73f11/CarouselViewOnScrollListener;->n_onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcrc645d80431ce5f73f11/CarouselViewOnScrollListener;->n_onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
