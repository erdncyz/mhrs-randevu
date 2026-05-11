.class public Lcom/microsoft/maui/glide/font/FontModelDataFetcher;
.super Ljava/lang/Object;
.source "FontModelDataFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Lcom/microsoft/maui/glide/font/FontModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final model:Lcom/microsoft/maui/glide/font/FontModel;


# direct methods
.method constructor <init>(Lcom/microsoft/maui/glide/font/FontModel;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/maui/glide/font/FontModelDataFetcher;->model:Lcom/microsoft/maui/glide/font/FontModel;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/microsoft/maui/glide/font/FontModel;",
            ">;"
        }
    .end annotation

    .line 37
    const-class v0, Lcom/microsoft/maui/glide/font/FontModel;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 43
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Lcom/microsoft/maui/glide/font/FontModel;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/microsoft/maui/glide/font/FontModelDataFetcher;->model:Lcom/microsoft/maui/glide/font/FontModel;

    .line 21
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    return-void
.end method
