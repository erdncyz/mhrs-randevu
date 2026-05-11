.class public final Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;
.super Ljava/lang/Object;
.source "AesGcmHkdfStreamingParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;
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

.field private derivedAesGcmKeySizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;
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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "derivedAesGcmKeySizeBytes needs to be 16 or 32, not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    .line 121
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    if-le v0, v1, :cond_2

    .line 131
    new-instance v0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;

    iget-object v3, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    iget-object v6, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;Ljava/lang/Integer;Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$1;)V

    return-object v0

    .line 127
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ciphertextSegmentSizeBytes needs to be at least derivedAesGcmKeySizeBytes + 25, i.e., "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

    .line 129
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keySizeBytes needs to be at least derivedAesGcmKeySizeBytes, i.e., "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "ciphertextSegmentSizeBytes needs to be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hkdfHashType needs to be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "derivedAesGcmKeySizeBytes needs to be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "keySizeBytes needs to be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCiphertextSegmentSizeBytes(I)Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ciphertextSegmentSizeBytes"
        }
    .end annotation

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->ciphertextSegmentSizeBytes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDerivedAesGcmKeySizeBytes(I)Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "derivedAesGcmKeySizeBytes"
        }
    .end annotation

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->derivedAesGcmKeySizeBytes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setHkdfHashType(Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;)Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hkdfHashType"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->hkdfHashType:Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    return-object p0
.end method

.method public setKeySizeBytes(I)Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySizeBytes"
        }
    .end annotation

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    return-object p0
.end method
