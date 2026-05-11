.class public final Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
.super Ljava/lang/Object;
.source "AesCtrHmacAeadParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aesKeySizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

.field private hmacKeySizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private ivSizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private tagSizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->aesKeySizeBytes:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hmacKeySizeBytes:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 81
    sget-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$1;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;-><init>()V

    return-void
.end method

.method private static validateTagSizeBytes(ILcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagSizeBytes",
            "hashType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA1:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x14

    if-gt p0, p1, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-array v0, v2, [Ljava/lang/Object;

    .line 152
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Invalid tag size in bytes %d; can be at most 20 bytes for SHA1"

    .line 151
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA224:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    if-ne p1, v0, :cond_3

    const/16 p1, 0x1c

    if-gt p0, p1, :cond_2

    return-void

    .line 158
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-array v0, v2, [Ljava/lang/Object;

    .line 161
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Invalid tag size in bytes %d; can be at most 28 bytes for SHA224"

    .line 159
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_3
    sget-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    if-ne p1, v0, :cond_5

    const/16 p1, 0x20

    if-gt p0, p1, :cond_4

    return-void

    .line 167
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-array v0, v2, [Ljava/lang/Object;

    .line 170
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Invalid tag size in bytes %d; can be at most 32 bytes for SHA256"

    .line 168
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_5
    sget-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA384:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    if-ne p1, v0, :cond_7

    const/16 p1, 0x30

    if-gt p0, p1, :cond_6

    return-void

    .line 176
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-array v0, v2, [Ljava/lang/Object;

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Invalid tag size in bytes %d; can be at most 48 bytes for SHA384"

    .line 177
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_7
    sget-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA512:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    if-ne p1, v0, :cond_9

    const/16 p1, 0x40

    if-gt p0, p1, :cond_8

    return-void

    .line 185
    :cond_8
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-array v0, v2, [Ljava/lang/Object;

    .line 188
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Invalid tag size in bytes %d; can be at most 64 bytes for SHA512"

    .line 186
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "unknown hash type; must be SHA1, SHA224, SHA256, SHA384 or SHA512"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->aesKeySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hmacKeySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->validateTagSizeBytes(ILcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)V

    .line 216
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->aesKeySizeBytes:Ljava/lang/Integer;

    .line 217
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hmacKeySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    iget-object v8, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;-><init>(IIIILcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$1;)V

    return-object v0

    .line 213
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "tag size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "iv size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HMAC key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "AES key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aesKeySizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported"

    .line 90
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->aesKeySizeBytes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashType"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    return-object p0
.end method

.method public setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmacKeySizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hmacKeySizeBytes:Ljava/lang/Integer;

    return-object p0

    .line 102
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Invalid key size in bytes %d; HMAC key must be at least 16 bytes"

    .line 103
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ivSizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    return-object p0

    .line 115
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Invalid IV size in bytes %d; IV size must be between 12 and 16 bytes"

    .line 116
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagSizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    return-object p0

    .line 127
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Invalid tag size in bytes %d; must be at least 10 bytes"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    return-object p0
.end method
