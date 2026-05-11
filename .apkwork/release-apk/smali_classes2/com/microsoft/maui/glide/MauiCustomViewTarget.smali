.class public Lcom/microsoft/maui/glide/MauiCustomViewTarget;
.super Lcom/bumptech/glide/request/target/CustomViewTarget;
.source "MauiCustomViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomViewTarget<",
        "Landroid/widget/ImageView;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/microsoft/maui/ImageLoaderCallback;

.field private completed:Z


# direct methods
.method public static synthetic $r8$lambda$YtAn-zg1L_BvjgHtVNFdLFbYXso(Lcom/microsoft/maui/glide/MauiCustomViewTarget;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->clear()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Lcom/microsoft/maui/ImageLoaderCallback;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->completed:Z

    iput-object p2, p0, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->callback:Lcom/microsoft/maui/ImageLoaderCallback;

    return-void
.end method

.method private clear()V
    .locals 0

    return-void
.end method

.method private post(Ljava/lang/Runnable;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method synthetic lambda$onLoadFailed$0$com-microsoft-maui-glide-MauiCustomViewTarget(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->callback:Lcom/microsoft/maui/ImageLoaderCallback;

    const/4 v1, 0x0

    .line 40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcom/microsoft/maui/glide/MauiCustomViewTarget$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/microsoft/maui/glide/MauiCustomViewTarget$$ExternalSyntheticLambda1;-><init>(Lcom/microsoft/maui/glide/MauiCustomViewTarget;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/microsoft/maui/ImageLoaderCallback;->onComplete(Ljava/lang/Boolean;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onResourceReady$1$com-microsoft-maui-glide-MauiCustomViewTarget(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->callback:Lcom/microsoft/maui/ImageLoaderCallback;

    const/4 v1, 0x1

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcom/microsoft/maui/glide/MauiCustomViewTarget$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/microsoft/maui/glide/MauiCustomViewTarget$$ExternalSyntheticLambda1;-><init>(Lcom/microsoft/maui/glide/MauiCustomViewTarget;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/microsoft/maui/ImageLoaderCallback;->onComplete(Ljava/lang/Boolean;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->completed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->completed:Z

    .line 40
    new-instance v0, Lcom/microsoft/maui/glide/MauiCustomViewTarget$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/maui/glide/MauiCustomViewTarget$$ExternalSyntheticLambda2;-><init>(Lcom/microsoft/maui/glide/MauiCustomViewTarget;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v0}, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResourceCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    iget-boolean p2, p0, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->completed:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->completed:Z

    .line 49
    new-instance p2, Lcom/microsoft/maui/glide/MauiCustomViewTarget$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/microsoft/maui/glide/MauiCustomViewTarget$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/maui/glide/MauiCustomViewTarget;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p2}, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 17
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/maui/glide/MauiCustomViewTarget;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
