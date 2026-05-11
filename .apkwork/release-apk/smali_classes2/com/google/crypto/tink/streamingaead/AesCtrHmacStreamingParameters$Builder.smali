.class public final Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;
.super Ljava/lang/Object;
.source "AesCtrHmacStreamingParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private ciphertextSegmentSizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private derivedKeySizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private hmacHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private hmacTagSizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private keySizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->derivedKeySizeBytes:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacTagSizeBytes:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->derivedKeySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacTagSizeBytes:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 144
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x20

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->derivedKeySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "derivedKeySizeBytes needs to be 16 or 32, not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->derivedKeySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->derivedKeySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    .line 152
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->derivedKeySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacTagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x8

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    .line 161
    sget-object v1, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;->SHA1:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    if-ne v0, v1, :cond_2

    const/16 v0, 0x14

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    .line 164
    sget-object v3, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;->SHA256:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    if-ne v1, v3, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    .line 167
    sget-object v1, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;->SHA512:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    if-ne v0, v1, :cond_4

    const/16 v2, 0x40

    :cond_4
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacTagSizeBytes:Ljava/lang/Integer;

    .line 170
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacTagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v2, :cond_5

    .line 179
    new-instance v0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;

    iget-object v4, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->derivedKeySizeBytes:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    iget-object v7, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    iget-object v8, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacTagSizeBytes:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$1;)V

    return-object v0

    .line 171
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "hmacTagSize must be in range [10, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacTagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ciphertextSegmentSizeBytes needs to be at least derivedKeySizeBytes + hmacTagSizeBytes + 9, i.e., "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->derivedKeySizeBytes:Ljava/lang/Integer;

    .line 156
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacTagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keySizeBytes needs to be at least derivedKeySizeBytes, i.e., "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->derivedKeySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "ciphertextSegmentSizeBytes needs to be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hmacTagSizeBytes needs to be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hmacHashType needs to be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hkdfHashType needs to be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "derivedKeySizeBytes needs to be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_d
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "keySizeBytes needs to be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCiphertextSegmentSizeBytes(I)Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ciphertextSegmentSizeBytes"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDerivedKeySizeBytes(I)Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "derivedKeySizeBytes"
        }
    .end annotation

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->derivedKeySizeBytes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setHkdfHashType(Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;)Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hkdfHashType"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    return-object p0
.end method

.method public setHmacHashType(Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;)Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmacHashType"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacHashType:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    return-object p0
.end method

.method public setHmacTagSizeBytes(Ljava/lang/Integer;)Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmacTagSizeBytes"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->hmacTagSizeBytes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setKeySizeBytes(I)Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySizeBytes"
        }
    .end annotation

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    return-object p0
.end method
