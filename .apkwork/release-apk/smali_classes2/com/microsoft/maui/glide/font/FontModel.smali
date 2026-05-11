.class public Lcom/microsoft/maui/glide/font/FontModel;
.super Ljava/lang/Object;
.source "FontModel.java"


# instance fields
.field private final color:I

.field private final glyph:Ljava/lang/String;

.field private final textSize:F

.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(ILjava/lang/String;FLandroid/graphics/Typeface;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/microsoft/maui/glide/font/FontModel;->color:I

    iput-object p2, p0, Lcom/microsoft/maui/glide/font/FontModel;->glyph:Ljava/lang/String;

    iput p3, p0, Lcom/microsoft/maui/glide/font/FontModel;->textSize:F

    iput-object p4, p0, Lcom/microsoft/maui/glide/font/FontModel;->typeface:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 29
    :cond_1
    check-cast p1, Lcom/microsoft/maui/glide/font/FontModel;

    iget v2, p0, Lcom/microsoft/maui/glide/font/FontModel;->color:I

    .line 30
    iget v3, p1, Lcom/microsoft/maui/glide/font/FontModel;->color:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/microsoft/maui/glide/font/FontModel;->glyph:Ljava/lang/String;

    iget-object v3, p1, Lcom/microsoft/maui/glide/font/FontModel;->glyph:Ljava/lang/String;

    .line 31
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/microsoft/maui/glide/font/FontModel;->textSize:F

    iget v3, p1, Lcom/microsoft/maui/glide/font/FontModel;->textSize:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/microsoft/maui/glide/font/FontModel;->typeface:Landroid/graphics/Typeface;

    iget-object p1, p1, Lcom/microsoft/maui/glide/font/FontModel;->typeface:Landroid/graphics/Typeface;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCacheKey()Lcom/bumptech/glide/signature/ObjectKey;
    .locals 3

    .line 59
    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/microsoft/maui/glide/font/FontModel;->color:I

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/maui/glide/font/FontModel;->glyph:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/microsoft/maui/glide/font/FontModel;->textSize:F

    .line 62
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/maui/glide/font/FontModel;->typeface:Landroid/graphics/Typeface;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/microsoft/maui/glide/font/FontModel;->color:I

    return v0
.end method

.method public getGlyph()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/maui/glide/font/FontModel;->glyph:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    iget v0, p0, Lcom/microsoft/maui/glide/font/FontModel;->textSize:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/maui/glide/font/FontModel;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/microsoft/maui/glide/font/FontModel;->color:I

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/microsoft/maui/glide/font/FontModel;->glyph:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/microsoft/maui/glide/font/FontModel;->textSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/microsoft/maui/glide/font/FontModel;->typeface:Landroid/graphics/Typeface;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
