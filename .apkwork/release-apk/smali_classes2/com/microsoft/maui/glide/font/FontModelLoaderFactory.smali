.class public Lcom/microsoft/maui/glide/font/FontModelLoaderFactory;
.super Ljava/lang/Object;
.source "FontModelLoaderFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lcom/microsoft/maui/glide/font/FontModel;",
        "Lcom/microsoft/maui/glide/font/FontModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/microsoft/maui/glide/font/FontModel;",
            "Lcom/microsoft/maui/glide/font/FontModel;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance p1, Lcom/microsoft/maui/glide/font/FontModelLoader;

    invoke-direct {p1}, Lcom/microsoft/maui/glide/font/FontModelLoader;-><init>()V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
