.class public Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;
.super Lcom/google/crypto/tink/streamingaead/StreamingAeadParameters;
.source "AesGcmHkdfStreamingParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;,
        Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;
    }
.end annotation


# instance fields
.field private final ciphertextSegmentSizeBytes:Ljava/lang/Integer;

.field private final derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

.field private final hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

.field private final keySizeBytes:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keySizeBytes",
            "derivedAesGcmKeySizeBytes",
            "hkdfHashType",
            "ciphertextSegmentSizeBytes"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/google/crypto/tink/streamingaead/StreamingAeadParameters;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->keySizeBytes:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    iput-object p4, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;Ljava/lang/Integer;Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;Ljava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;
    .locals 1

    .line 51
    new-instance v0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;-><init>()V

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

    .line 175
    instance-of v0, p1, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 178
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;

    .line 179
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->getKeySizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->getKeySizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 180
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->getDerivedAesGcmKeySizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->getDerivedAesGcmKeySizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 181
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->getHkdfHashType()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->getHkdfHashType()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->getCiphertextSegmentSizeBytes()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->getCiphertextSegmentSizeBytes()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCiphertextSegmentSizeBytes()I
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDerivedAesGcmKeySizeBytes()I
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getHkdfHashType()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    return-object v0
.end method

.method public getKeySizeBytes()I
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->keySizeBytes:Ljava/lang/Integer;

    .line 154
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->keySizeBytes:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    aput-object v2, v0, v1

    .line 187
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AesGcmHkdfStreaming Parameters (IKM size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->keySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-byte AES GCM key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for HKDF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-byte ciphertexts)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
