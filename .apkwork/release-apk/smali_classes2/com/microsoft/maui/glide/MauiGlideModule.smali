.class public Lcom/microsoft/maui/glide/MauiGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "MauiGlideModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 0

    .line 44
    invoke-static {}, Lcom/microsoft/maui/glide/GlideLogging;->isVerboseLoggable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 45
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/GlideBuilder;->setLogLevel(I)Lcom/bumptech/glide/GlideBuilder;

    :cond_0
    return-void
.end method

.method public isManifestParsingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 1

    .line 28
    const-class p1, Lcom/microsoft/maui/glide/font/FontModel;

    const-class p2, Lcom/microsoft/maui/glide/font/FontModel;

    new-instance v0, Lcom/microsoft/maui/glide/font/FontModelLoaderFactory;

    invoke-direct {v0}, Lcom/microsoft/maui/glide/font/FontModelLoaderFactory;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 29
    const-class p1, Lcom/microsoft/maui/glide/font/FontModel;

    const-class p2, Landroid/graphics/Bitmap;

    new-instance v0, Lcom/microsoft/maui/glide/font/FontModelResourceDecoder;

    invoke-direct {v0}, Lcom/microsoft/maui/glide/font/FontModelResourceDecoder;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    .line 30
    const-class p1, Ljava/io/InputStream;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/microsoft/maui/glide/stream/GlideInputStreamModelLoaderFactory;

    invoke-direct {v0}, Lcom/microsoft/maui/glide/stream/GlideInputStreamModelLoaderFactory;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 32
    const-class p1, Lcom/microsoft/maui/ImageLoaderCallback;

    const-class p2, Lcom/microsoft/maui/ImageLoaderCallback;

    new-instance v0, Lcom/microsoft/maui/glide/fallback/ImageLoaderCallbackModelLoaderFactory;

    invoke-direct {v0}, Lcom/microsoft/maui/glide/fallback/ImageLoaderCallbackModelLoaderFactory;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    return-void
.end method
