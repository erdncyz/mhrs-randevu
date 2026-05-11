.class public Lcom/microsoft/maui/glide/font/FontModelResourceDecoder;
.super Ljava/lang/Object;
.source "FontModelResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Lcom/microsoft/maui/glide/font/FontModel;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;-><init>()V

    iput-object v0, p0, Lcom/microsoft/maui/glide/font/FontModelResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    return-void
.end method


# virtual methods
.method public decode(Lcom/microsoft/maui/glide/font/FontModel;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/maui/glide/font/FontModel;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/microsoft/maui/glide/font/FontModel;->getTextSize()F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p3, 0x1

    .line 37
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    invoke-virtual {p1}, Lcom/microsoft/maui/glide/font/FontModel;->getColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 41
    invoke-virtual {p1}, Lcom/microsoft/maui/glide/font/FontModel;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 44
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/maui/glide/font/FontModel;->getGlyph()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    const/high16 p4, 0x3f000000    # 0.5f

    add-float/2addr p3, p4

    float-to-int p3, p3

    .line 48
    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    add-float/2addr v0, p4

    float-to-int v0, v0

    int-to-float v0, v0

    .line 49
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v1, v0

    add-float/2addr v1, p4

    float-to-int p4, v1

    iget-object v1, p0, Lcom/microsoft/maui/glide/font/FontModelResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 52
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {v1, p3, p4, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 54
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    invoke-virtual {p1}, Lcom/microsoft/maui/glide/font/FontModel;->getGlyph()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p4, p1, v1, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 57
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    iget-object p2, p0, Lcom/microsoft/maui/glide/font/FontModelResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {p1, p3, p2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-object p1
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    check-cast p1, Lcom/microsoft/maui/glide/font/FontModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/maui/glide/font/FontModelResourceDecoder;->decode(Lcom/microsoft/maui/glide/font/FontModel;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public handles(Lcom/microsoft/maui/glide/font/FontModel;Lcom/bumptech/glide/load/Options;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    check-cast p1, Lcom/microsoft/maui/glide/font/FontModel;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/maui/glide/font/FontModelResourceDecoder;->handles(Lcom/microsoft/maui/glide/font/FontModel;Lcom/bumptech/glide/load/Options;)Z

    move-result p1

    return p1
.end method
