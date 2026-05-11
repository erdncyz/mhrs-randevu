.class public final Lcom/google/crypto/tink/prf/PredefinedPrfParameters;
.super Ljava/lang/Object;
.source "PredefinedPrfParameters.java"


# static fields
.field public static final AES_CMAC_PRF:Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

.field public static final HKDF_SHA256:Lcom/google/crypto/tink/prf/HkdfPrfParameters;

.field public static final HMAC_SHA256_PRF:Lcom/google/crypto/tink/prf/HmacPrfParameters;

.field public static final HMAC_SHA512_PRF:Lcom/google/crypto/tink/prf/HmacPrfParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/google/crypto/tink/prf/PredefinedPrfParameters$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/prf/PredefinedPrfParameters$$ExternalSyntheticLambda0;-><init>()V

    .line 41
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/prf/HkdfPrfParameters;

    sput-object v0, Lcom/google/crypto/tink/prf/PredefinedPrfParameters;->HKDF_SHA256:Lcom/google/crypto/tink/prf/HkdfPrfParameters;

    .line 57
    new-instance v0, Lcom/google/crypto/tink/prf/PredefinedPrfParameters$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/prf/PredefinedPrfParameters$$ExternalSyntheticLambda1;-><init>()V

    .line 58
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/prf/HmacPrfParameters;

    sput-object v0, Lcom/google/crypto/tink/prf/PredefinedPrfParameters;->HMAC_SHA256_PRF:Lcom/google/crypto/tink/prf/HmacPrfParameters;

    .line 74
    new-instance v0, Lcom/google/crypto/tink/prf/PredefinedPrfParameters$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/crypto/tink/prf/PredefinedPrfParameters$$ExternalSyntheticLambda2;-><init>()V

    .line 75
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/prf/HmacPrfParameters;

    sput-object v0, Lcom/google/crypto/tink/prf/PredefinedPrfParameters;->HMAC_SHA512_PRF:Lcom/google/crypto/tink/prf/HmacPrfParameters;

    .line 90
    new-instance v0, Lcom/google/crypto/tink/prf/PredefinedPrfParameters$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/crypto/tink/prf/PredefinedPrfParameters$$ExternalSyntheticLambda3;-><init>()V

    .line 91
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    sput-object v0, Lcom/google/crypto/tink/prf/PredefinedPrfParameters;->AES_CMAC_PRF:Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0()Lcom/google/crypto/tink/prf/HkdfPrfParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->builder()Lcom/google/crypto/tink/prf/HkdfPrfParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/prf/HkdfPrfParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/prf/HkdfPrfParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;->SHA256:Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/prf/HkdfPrfParameters$Builder;->setHashType(Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;)Lcom/google/crypto/tink/prf/HkdfPrfParameters$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/crypto/tink/prf/HkdfPrfParameters$Builder;->build()Lcom/google/crypto/tink/prf/HkdfPrfParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$1()Lcom/google/crypto/tink/prf/HmacPrfParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/google/crypto/tink/prf/HmacPrfParameters;->builder()Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;->SHA256:Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;->setHashType(Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;)Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;->build()Lcom/google/crypto/tink/prf/HmacPrfParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$2()Lcom/google/crypto/tink/prf/HmacPrfParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/google/crypto/tink/prf/HmacPrfParameters;->builder()Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;

    move-result-object v0

    const/16 v1, 0x40

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;->SHA512:Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;->setHashType(Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;)Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;->build()Lcom/google/crypto/tink/prf/HmacPrfParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$3()Lcom/google/crypto/tink/prf/AesCmacPrfParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x20

    .line 91
    invoke-static {v0}, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->create(I)Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    move-result-object v0

    return-object v0
.end method
