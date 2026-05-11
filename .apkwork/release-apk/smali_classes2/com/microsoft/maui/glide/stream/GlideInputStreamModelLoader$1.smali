.class Lcom/microsoft/maui/glide/stream/GlideInputStreamModelLoader$1;
.super Ljava/lang/Object;
.source "GlideInputStreamModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/maui/glide/stream/GlideInputStreamModelLoader;->buildLoadData(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/maui/glide/stream/GlideInputStreamModelLoader;

.field final synthetic val$inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/microsoft/maui/glide/stream/GlideInputStreamModelLoader;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/maui/glide/stream/GlideInputStreamModelLoader$1;->this$0:Lcom/microsoft/maui/glide/stream/GlideInputStreamModelLoader;

    iput-object p2, p0, Lcom/microsoft/maui/glide/stream/GlideInputStreamModelLoader$1;->val$inputStream:Ljava/io/InputStream;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/maui/glide/stream/GlideInputStreamModelLoader$1;->val$inputStream:Ljava/io/InputStream;

    .line 29
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 42
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 48
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
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/microsoft/maui/glide/stream/GlideInputStreamModelLoader$1;->val$inputStream:Ljava/io/InputStream;

    .line 23
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    return-void
.end method
