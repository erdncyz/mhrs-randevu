.class public Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;
.super Lcom/google/crypto/tink/streamingaead/StreamingAeadParameters;
.source "AesCtrHmacStreamingParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;,
        Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;
    }
.end annotation


# instance fields
.field private final ciphertextSegmentSizeBytes:Ljava/lang/Integer;

.field private final derivedKeySizeBytes:Ljava/lang/Integer;

.field private final hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

.field private final hmacHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

.field private final hmacTagSizeBytes:Ljava/lang/Integer;

.field private final keySizeBytes:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;Ljava/lang/Integer;Ljava/lang/Integer;)V
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
            "keySizeBytes",
            "derivedKeySizeBytes",
            "hkdfHashType",
            "hmacHashType",
            "hmacTagSizeBytes",
            "ciphertextSegmentSizeBytes"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Lcom/google/crypto/tink/streamingaead/StreamingAeadParameters;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->keySizeBytes:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->derivedKeySizeBytes:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    iput-object p4, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->hmacHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    iput-object p5, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->hmacTagSizeBytes:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$1;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p6}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;
    .locals 1

    .line 52
    new-instance v0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;-><init>()V

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

    .line 243
    instance-of v0, p1, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 246
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;

    .line 247
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getKeySizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getKeySizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 248
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getDerivedKeySizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getDerivedKeySizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 249
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getHkdfHashType()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getHkdfHashType()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 250
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getHmacHashType()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getHmacHashType()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 251
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getHmacTagSizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getHmacTagSizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 252
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getCiphertextSegmentSizeBytes()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getCiphertextSegmentSizeBytes()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCiphertextSegmentSizeBytes()I
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    .line 238
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDerivedKeySizeBytes()I
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->derivedKeySizeBytes:Ljava/lang/Integer;

    .line 218
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getHkdfHashType()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    return-object v0
.end method

.method public getHmacHashType()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->hmacHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    return-object v0
.end method

.method public getHmacTagSizeBytes()I
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->hmacTagSizeBytes:Ljava/lang/Integer;

    .line 233
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getKeySizeBytes()I
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->keySizeBytes:Ljava/lang/Integer;

    .line 213
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->keySizeBytes:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->derivedKeySizeBytes:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->hmacHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->hmacTagSizeBytes:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    aput-object v2, v0, v1

    .line 257
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AesCtrHmacStreaming Parameters (IKM size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->keySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->derivedKeySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-byte AES key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for HKDF, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for HMAC, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->hmacTagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-byte tags, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-byte ciphertexts)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
