.class public final Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;
.super Ljava/lang/Object;
.source "PredefinedSignatureParameters.java"


# static fields
.field public static final ECDSA_P256:Lcom/google/crypto/tink/signature/EcdsaParameters;

.field public static final ECDSA_P256_IEEE_P1363:Lcom/google/crypto/tink/signature/EcdsaParameters;

.field public static final ECDSA_P256_IEEE_P1363_WITHOUT_PREFIX:Lcom/google/crypto/tink/signature/EcdsaParameters;

.field public static final ECDSA_P384:Lcom/google/crypto/tink/signature/EcdsaParameters;

.field public static final ECDSA_P384_IEEE_P1363:Lcom/google/crypto/tink/signature/EcdsaParameters;

.field public static final ECDSA_P521:Lcom/google/crypto/tink/signature/EcdsaParameters;

.field public static final ECDSA_P521_IEEE_P1363:Lcom/google/crypto/tink/signature/EcdsaParameters;

.field public static final ED25519:Lcom/google/crypto/tink/signature/Ed25519Parameters;

.field public static final ED25519WithRawOutput:Lcom/google/crypto/tink/signature/Ed25519Parameters;

.field public static final RSA_SSA_PKCS1_3072_SHA256_F4:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

.field public static final RSA_SSA_PKCS1_3072_SHA256_F4_WITHOUT_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

.field public static final RSA_SSA_PKCS1_4096_SHA512_F4:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

.field public static final RSA_SSA_PSS_3072_SHA256_SHA256_32_F4:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

.field public static final RSA_SSA_PSS_4096_SHA512_SHA512_64_F4:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda0;-><init>()V

    .line 40
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/EcdsaParameters;

    sput-object v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->ECDSA_P256:Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 60
    new-instance v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda5;-><init>()V

    .line 61
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/EcdsaParameters;

    sput-object v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->ECDSA_P384:Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 81
    new-instance v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda6;-><init>()V

    .line 82
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/EcdsaParameters;

    sput-object v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->ECDSA_P521:Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 102
    new-instance v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda7;-><init>()V

    .line 103
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/EcdsaParameters;

    sput-object v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->ECDSA_P256_IEEE_P1363:Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 123
    new-instance v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda8;-><init>()V

    .line 124
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/EcdsaParameters;

    sput-object v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->ECDSA_P384_IEEE_P1363:Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 146
    new-instance v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda9;-><init>()V

    .line 147
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/EcdsaParameters;

    sput-object v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->ECDSA_P256_IEEE_P1363_WITHOUT_PREFIX:Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 167
    new-instance v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda10;-><init>()V

    .line 168
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/EcdsaParameters;

    sput-object v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->ECDSA_P521_IEEE_P1363:Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 182
    new-instance v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda11;-><init>()V

    .line 183
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/Ed25519Parameters;

    sput-object v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->ED25519:Lcom/google/crypto/tink/signature/Ed25519Parameters;

    .line 194
    new-instance v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda12;-><init>()V

    .line 195
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/Ed25519Parameters;

    sput-object v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->ED25519WithRawOutput:Lcom/google/crypto/tink/signature/Ed25519Parameters;

    .line 208
    new-instance v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda13;-><init>()V

    .line 209
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    sput-object v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->RSA_SSA_PKCS1_3072_SHA256_F4:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    .line 229
    new-instance v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda1;-><init>()V

    .line 230
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    sput-object v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->RSA_SSA_PKCS1_3072_SHA256_F4_WITHOUT_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    .line 250
    new-instance v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda2;-><init>()V

    .line 251
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    sput-object v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->RSA_SSA_PKCS1_4096_SHA512_F4:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    .line 272
    new-instance v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda3;-><init>()V

    .line 273
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    sput-object v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->RSA_SSA_PSS_3072_SHA256_SHA256_32_F4:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    .line 296
    new-instance v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters$$ExternalSyntheticLambda4;-><init>()V

    .line 297
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    sput-object v0, Lcom/google/crypto/tink/signature/PredefinedSignatureParameters;->RSA_SSA_PSS_4096_SHA512_SHA512_64_F4:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0()Lcom/google/crypto/tink/signature/EcdsaParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/google/crypto/tink/signature/EcdsaParameters;->builder()Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setCurveType(Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;->DER:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setSignatureEncoding(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    .line 46
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->build()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$1()Lcom/google/crypto/tink/signature/EcdsaParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/google/crypto/tink/signature/EcdsaParameters;->builder()Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P384:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setCurveType(Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;->DER:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setSignatureEncoding(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->build()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$10()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    .line 233
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    const/16 v1, 0xc00

    .line 234
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 235
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 236
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$11()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 253
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    .line 254
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 255
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 256
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->TINK:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 257
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$12()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 275
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->builder()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 276
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setSigHashType(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 277
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setMgf1HashType(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 278
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setSaltLengthBytes(I)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    const/16 v1, 0xc00

    .line 279
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    .line 280
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    .line 281
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$13()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 299
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->builder()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 300
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setSigHashType(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 301
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setMgf1HashType(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    const/16 v1, 0x40

    .line 302
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setSaltLengthBytes(I)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 303
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    .line 304
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    .line 305
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$2()Lcom/google/crypto/tink/signature/EcdsaParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/google/crypto/tink/signature/EcdsaParameters;->builder()Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P521:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setCurveType(Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;->DER:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    .line 87
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setSignatureEncoding(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    .line 88
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->build()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$3()Lcom/google/crypto/tink/signature/EcdsaParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/google/crypto/tink/signature/EcdsaParameters;->builder()Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;->IEEE_P1363:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setSignatureEncoding(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setCurveType(Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    .line 109
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->build()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$4()Lcom/google/crypto/tink/signature/EcdsaParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-static {}, Lcom/google/crypto/tink/signature/EcdsaParameters;->builder()Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;->IEEE_P1363:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    .line 127
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setSignatureEncoding(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P384:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setCurveType(Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->build()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$5()Lcom/google/crypto/tink/signature/EcdsaParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-static {}, Lcom/google/crypto/tink/signature/EcdsaParameters;->builder()Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;->IEEE_P1363:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    .line 150
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setSignatureEncoding(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    .line 151
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setCurveType(Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    .line 152
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->build()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$6()Lcom/google/crypto/tink/signature/EcdsaParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    invoke-static {}, Lcom/google/crypto/tink/signature/EcdsaParameters;->builder()Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    .line 171
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P521:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    .line 172
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setCurveType(Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;->IEEE_P1363:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    .line 173
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setSignatureEncoding(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    .line 174
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->build()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$7()Lcom/google/crypto/tink/signature/Ed25519Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->TINK:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    invoke-static {v0}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->create(Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;)Lcom/google/crypto/tink/signature/Ed25519Parameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$8()Lcom/google/crypto/tink/signature/Ed25519Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    invoke-static {v0}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->create(Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;)Lcom/google/crypto/tink/signature/Ed25519Parameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$9()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    .line 212
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    const/16 v1, 0xc00

    .line 213
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 214
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->TINK:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 215
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method
