.class public final Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;
.super Ljava/lang/Object;
.source "HmacPrfParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/prf/HmacPrfParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private hashType:Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private keySizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;->hashType:Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/prf/HmacPrfParameters$1;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/prf/HmacPrfParameters;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;->hashType:Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;

    if-eqz v1, :cond_0

    .line 89
    new-instance v1, Lcom/google/crypto/tink/prf/HmacPrfParameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;->hashType:Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/crypto/tink/prf/HmacPrfParameters;-><init>(ILcom/google/crypto/tink/prf/HmacPrfParameters$HashType;Lcom/google/crypto/tink/prf/HmacPrfParameters$1;)V

    return-object v1

    .line 87
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHashType(Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;)Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashType"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;->hashType:Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;

    return-object p0
.end method

.method public setKeySizeBytes(I)Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;
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

    if-lt p1, v0, :cond_0

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    return-object p0

    .line 68
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x8

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid key size %d; only 128-bit or larger are supported"

    .line 69
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
