.class public Lcom/google/crypto/tink/subtle/PrfMac;
.super Ljava/lang/Object;
.source "PrfMac.java"

# interfaces
.implements Lcom/google/crypto/tink/Mac;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final FORMAT_VERSION:[B

.field static final MIN_TAG_SIZE_IN_BYTES:I = 0xa


# instance fields
.field private final outputPrefix:[B

.field private final plaintextLegacySuffix:[B

.field private final tagSize:I

.field private final wrappedPrf:Lcom/google/crypto/tink/prf/Prf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lcom/google/crypto/tink/subtle/PrfMac;->FORMAT_VERSION:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/mac/AesCmacKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/google/crypto/tink/subtle/PrfAesCmac;

    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/AesCmacKey;->getAesKey()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/subtle/PrfAesCmac;-><init>([B)V

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/PrfMac;->wrappedPrf:Lcom/google/crypto/tink/prf/Prf;

    .line 75
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/AesCmacKey;->getParameters()Lcom/google/crypto/tink/mac/AesCmacParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/subtle/PrfMac;->tagSize:I

    .line 76
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/AesCmacKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/PrfMac;->outputPrefix:[B

    .line 77
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/AesCmacKey;->getParameters()Lcom/google/crypto/tink/mac/AesCmacParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getVariant()Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->LEGACY:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/crypto/tink/subtle/PrfMac;->FORMAT_VERSION:[B

    .line 78
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/PrfMac;->plaintextLegacySuffix:[B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/PrfMac;->plaintextLegacySuffix:[B

    :goto_0
    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/mac/HmacKey;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/google/crypto/tink/subtle/PrfHmacJce;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HMAC"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/HmacKey;->getParameters()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/mac/HmacParameters;->getHashType()Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 91
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/HmacKey;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v4

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lcom/google/crypto/tink/subtle/PrfHmacJce;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/PrfMac;->wrappedPrf:Lcom/google/crypto/tink/prf/Prf;

    .line 94
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/HmacKey;->getParameters()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/subtle/PrfMac;->tagSize:I

    .line 95
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/HmacKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/PrfMac;->outputPrefix:[B

    .line 96
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/HmacKey;->getParameters()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->LEGACY:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/crypto/tink/subtle/PrfMac;->FORMAT_VERSION:[B

    .line 97
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/PrfMac;->plaintextLegacySuffix:[B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/PrfMac;->plaintextLegacySuffix:[B

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/prf/Prf;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wrappedPrf",
            "tagSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/PrfMac;->wrappedPrf:Lcom/google/crypto/tink/prf/Prf;

    iput p2, p0, Lcom/google/crypto/tink/subtle/PrfMac;->tagSize:I

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/crypto/tink/subtle/PrfMac;->outputPrefix:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/crypto/tink/subtle/PrfMac;->plaintextLegacySuffix:[B

    const/16 v1, 0xa

    if-lt p2, v1, :cond_0

    new-array v0, v0, [B

    .line 68
    invoke-interface {p1, v0, p2}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too small, need at least 10 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lcom/google/crypto/tink/mac/AesCmacKey;)Lcom/google/crypto/tink/Mac;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/google/crypto/tink/subtle/PrfMac;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/subtle/PrfMac;-><init>(Lcom/google/crypto/tink/mac/AesCmacKey;)V

    return-object v0
.end method

.method public static create(Lcom/google/crypto/tink/mac/HmacKey;)Lcom/google/crypto/tink/Mac;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/google/crypto/tink/subtle/PrfMac;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/subtle/PrfMac;-><init>(Lcom/google/crypto/tink/mac/HmacKey;)V

    return-object v0
.end method


# virtual methods
.method public computeMac([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/subtle/PrfMac;->plaintextLegacySuffix:[B

    .line 115
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lez v1, :cond_0

    new-array v1, v4, [[B

    iget-object v5, p0, Lcom/google/crypto/tink/subtle/PrfMac;->outputPrefix:[B

    aput-object v5, v1, v3

    iget-object v5, p0, Lcom/google/crypto/tink/subtle/PrfMac;->wrappedPrf:Lcom/google/crypto/tink/prf/Prf;

    new-array v4, v4, [[B

    aput-object p1, v4, v3

    aput-object v0, v4, v2

    .line 117
    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    iget v0, p0, Lcom/google/crypto/tink/subtle/PrfMac;->tagSize:I

    invoke-interface {v5, p1, v0}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    move-result-object p1

    aput-object p1, v1, v2

    .line 116
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-array v0, v4, [[B

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/PrfMac;->outputPrefix:[B

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/PrfMac;->wrappedPrf:Lcom/google/crypto/tink/prf/Prf;

    iget v3, p0, Lcom/google/crypto/tink/subtle/PrfMac;->tagSize:I

    .line 119
    invoke-interface {v1, p1, v3}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method

.method public verifyMac([B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mac",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/subtle/PrfMac;->computeMac([B)[B

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
