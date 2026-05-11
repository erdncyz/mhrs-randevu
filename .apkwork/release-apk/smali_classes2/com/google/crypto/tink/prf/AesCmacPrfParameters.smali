.class public final Lcom/google/crypto/tink/prf/AesCmacPrfParameters;
.super Lcom/google/crypto/tink/prf/PrfParameters;
.source "AesCmacPrfParameters.java"


# instance fields
.field private final keySizeBytes:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySizeBytes"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/google/crypto/tink/prf/PrfParameters;-><init>()V

    iput p1, p0, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->keySizeBytes:I

    return-void
.end method

.method public static create(I)Lcom/google/crypto/tink/prf/AesCmacPrfParameters;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    mul-int/lit8 p0, p0, 0x8

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Invalid key size %d; only 128-bit and 256-bit are supported"

    .line 35
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 53
    instance-of v0, p1, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 56
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    .line 57
    invoke-virtual {p1}, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->getKeySizeBytes()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->getKeySizeBytes()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getKeySizeBytes()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->keySizeBytes:I

    return v0
.end method

.method public hasIdRequirement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->keySizeBytes:I

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AesCmac PRF Parameters ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->keySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
