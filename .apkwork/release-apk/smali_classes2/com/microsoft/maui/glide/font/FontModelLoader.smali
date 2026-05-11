.class public Lcom/microsoft/maui/glide/font/FontModelLoader;
.super Ljava/lang/Object;
.source "FontModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Lcom/microsoft/maui/glide/font/FontModel;",
        "Lcom/microsoft/maui/glide/font/FontModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLoadData(Lcom/microsoft/maui/glide/font/FontModel;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/maui/glide/font/FontModel;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "Lcom/microsoft/maui/glide/font/FontModel;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    invoke-virtual {p1}, Lcom/microsoft/maui/glide/font/FontModel;->getCacheKey()Lcom/bumptech/glide/signature/ObjectKey;

    move-result-object p3

    new-instance p4, Lcom/microsoft/maui/glide/font/FontModelDataFetcher;

    invoke-direct {p4, p1}, Lcom/microsoft/maui/glide/font/FontModelDataFetcher;-><init>(Lcom/microsoft/maui/glide/font/FontModel;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    .line 9
    check-cast p1, Lcom/microsoft/maui/glide/font/FontModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/maui/glide/font/FontModelLoader;->buildLoadData(Lcom/microsoft/maui/glide/font/FontModel;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Lcom/microsoft/maui/glide/font/FontModel;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 9
    check-cast p1, Lcom/microsoft/maui/glide/font/FontModel;

    invoke-virtual {p0, p1}, Lcom/microsoft/maui/glide/font/FontModelLoader;->handles(Lcom/microsoft/maui/glide/font/FontModel;)Z

    move-result p1

    return p1
.end method
