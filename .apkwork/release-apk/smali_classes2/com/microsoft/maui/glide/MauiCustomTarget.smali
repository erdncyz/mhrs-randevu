.class public Lcom/microsoft/maui/glide/MauiCustomTarget;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "MauiCustomTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/microsoft/maui/ImageLoaderCallback;

.field private completed:Z

.field private final context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$oMyZpHccubjE_6b2KujACOo2mCE(Lcom/microsoft/maui/glide/MauiCustomTarget;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/maui/glide/MauiCustomTarget;->clear()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/maui/ImageLoaderCallback;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/maui/glide/MauiCustomTarget;->completed:Z

    iput-object p1, p0, Lcom/microsoft/maui/glide/MauiCustomTarget;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/maui/glide/MauiCustomTarget;->callback:Lcom/microsoft/maui/ImageLoaderCallback;

    return-void
.end method

.method private clear()V
    .locals 1

    .line 59
    new-instance v0, Lcom/microsoft/maui/glide/MauiCustomTarget$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/microsoft/maui/glide/MauiCustomTarget$$ExternalSyntheticLambda2;-><init>(Lcom/microsoft/maui/glide/MauiCustomTarget;)V

    invoke-direct {p0, v0}, Lcom/microsoft/maui/glide/MauiCustomTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private post(Ljava/lang/Runnable;)V
    .locals 2

    .line 53
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method synthetic lambda$clear$2$com-microsoft-maui-glide-MauiCustomTarget()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/microsoft/maui/glide/MauiCustomTarget;->context:Landroid/content/Context;

    .line 61
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method

.method synthetic lambda$onLoadFailed$0$com-microsoft-maui-glide-MauiCustomTarget(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/microsoft/maui/glide/MauiCustomTarget;->callback:Lcom/microsoft/maui/ImageLoaderCallback;

    const/4 v1, 0x0

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/microsoft/maui/ImageLoaderCallback;->onComplete(Ljava/lang/Boolean;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onResourceReady$1$com-microsoft-maui-glide-MauiCustomTarget(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/microsoft/maui/glide/MauiCustomTarget;->callback:Lcom/microsoft/maui/ImageLoaderCallback;

    const/4 v1, 0x1

    .line 45
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcom/microsoft/maui/glide/MauiCustomTarget$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/microsoft/maui/glide/MauiCustomTarget$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/maui/glide/MauiCustomTarget;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/microsoft/maui/ImageLoaderCallback;->onComplete(Ljava/lang/Boolean;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/maui/glide/MauiCustomTarget;->completed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/maui/glide/MauiCustomTarget;->completed:Z

    .line 35
    new-instance v0, Lcom/microsoft/maui/glide/MauiCustomTarget$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/maui/glide/MauiCustomTarget$$ExternalSyntheticLambda1;-><init>(Lcom/microsoft/maui/glide/MauiCustomTarget;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v0}, Lcom/microsoft/maui/glide/MauiCustomTarget;->post(Ljava/lang/Runnable;)V

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

    iget-boolean p2, p0, Lcom/microsoft/maui/glide/MauiCustomTarget;->completed:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/microsoft/maui/glide/MauiCustomTarget;->completed:Z

    .line 45
    new-instance p2, Lcom/microsoft/maui/glide/MauiCustomTarget$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lcom/microsoft/maui/glide/MauiCustomTarget$$ExternalSyntheticLambda3;-><init>(Lcom/microsoft/maui/glide/MauiCustomTarget;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p2}, Lcom/microsoft/maui/glide/MauiCustomTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 17
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/maui/glide/MauiCustomTarget;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
