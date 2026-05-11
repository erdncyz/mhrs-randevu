.class public final Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;
.super Lcom/google/crypto/tink/aead/AeadParameters;
.source "AesCtrHmacAeadParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;,
        Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;,
        Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;
    }
.end annotation


# static fields
.field private static final PREFIX_SIZE_IN_BYTES:I = 0x5


# instance fields
.field private final aesKeySizeBytes:I

.field private final hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

.field private final hmacKeySizeBytes:I

.field private final ivSizeBytes:I

.field private final tagSizeBytes:I

.field private final variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;


# direct methods
.method private constructor <init>(IIIILcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aesKeySizeBytes",
            "hmacKeySizeBytes",
            "ivSizeBytes",
            "tagSizeBytes",
            "variant",
            "hashType"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadParameters;-><init>()V

    iput p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->aesKeySizeBytes:I

    iput p2, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hmacKeySizeBytes:I

    iput p3, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->ivSizeBytes:I

    iput p4, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->tagSizeBytes:I

    iput-object p5, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    iput-object p6, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    return-void
.end method

.method synthetic constructor <init>(IIIILcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$1;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p6}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;-><init>(IIIILcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    .locals 2

    .line 244
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;-><init>(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 290
    instance-of v0, p1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 293
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    .line 294
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getAesKeySizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getAesKeySizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 295
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getHmacKeySizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getHmacKeySizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 296
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getIvSizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getIvSizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 297
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getTagSizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getTagSizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 298
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getVariant()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getVariant()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 299
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getHashType()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getHashType()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAesKeySizeBytes()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->aesKeySizeBytes:I

    return v0
.end method

.method public getCiphertextOverheadSizeBytes()I
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 269
    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    if-ne v0, v1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getTagSizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getIvSizeBytes()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 272
    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getTagSizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getIvSizeBytes()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getHashType()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    return-object v0
.end method

.method public getHmacKeySizeBytes()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hmacKeySizeBytes:I

    return v0
.end method

.method public getIvSizeBytes()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->ivSizeBytes:I

    return v0
.end method

.method public getTagSizeBytes()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->tagSizeBytes:I

    return v0
.end method

.method public getVariant()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 316
    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->aesKeySizeBytes:I

    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hmacKeySizeBytes:I

    .line 307
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->ivSizeBytes:I

    .line 308
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->tagSizeBytes:I

    .line 309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    aput-object v2, v0, v1

    .line 304
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AesCtrHmacAead Parameters (variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->ivSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte IV, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->tagSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte tags, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->aesKeySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte AES key, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hmacKeySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte HMAC key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
