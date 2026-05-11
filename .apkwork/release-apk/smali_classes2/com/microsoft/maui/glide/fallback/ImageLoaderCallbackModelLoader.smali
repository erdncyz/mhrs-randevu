.class public Lcom/microsoft/maui/glide/fallback/ImageLoaderCallbackModelLoader;
.super Ljava/lang/Object;
.source "ImageLoaderCallbackModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Lcom/microsoft/maui/ImageLoaderCallback;",
        "Lcom/microsoft/maui/ImageLoaderCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLoadData(Lcom/microsoft/maui/ImageLoaderCallback;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/maui/ImageLoaderCallback;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "Lcom/microsoft/maui/ImageLoaderCallback;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    .line 11
    check-cast p1, Lcom/microsoft/maui/ImageLoaderCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/maui/glide/fallback/ImageLoaderCallbackModelLoader;->buildLoadData(Lcom/microsoft/maui/ImageLoaderCallback;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Lcom/microsoft/maui/ImageLoaderCallback;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 11
    check-cast p1, Lcom/microsoft/maui/ImageLoaderCallback;

    invoke-virtual {p0, p1}, Lcom/microsoft/maui/glide/fallback/ImageLoaderCallbackModelLoader;->handles(Lcom/microsoft/maui/ImageLoaderCallback;)Z

    move-result p1

    return p1
.end method
