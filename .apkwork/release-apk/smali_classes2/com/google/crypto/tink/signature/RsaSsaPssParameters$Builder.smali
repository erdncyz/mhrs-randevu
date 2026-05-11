.class public final Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
.super Ljava/lang/Object;
.source "RsaSsaPssParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPssParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final MIN_RSA_MODULUS_SIZE:I = 0x800

.field private static final PUBLIC_EXPONENT_UPPER_BOUND:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private modulusSizeBits:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private publicExponent:Ljava/math/BigInteger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private saltLengthBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2

    .line 131
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->TWO:Ljava/math/BigInteger;

    const/16 v1, 0x100

    .line 132
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->PUBLIC_EXPONENT_UPPER_BOUND:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    .line 82
    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    iput-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->publicExponent:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->saltLengthBytes:Ljava/lang/Integer;

    .line 86
    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$1;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;-><init>()V

    return-void
.end method

.method private validatePublicExponent(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicExponent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz v0, :cond_3

    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->TWO:Ljava/math/BigInteger;

    .line 148
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->PUBLIC_EXPONENT_UPPER_BOUND:Ljava/math/BigInteger;

    .line 152
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_1

    return-void

    .line 154
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Public exponent cannot be larger than 2^256."

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Invalid public exponent"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_3
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Public exponent must be at least 65537."

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->publicExponent:Ljava/math/BigInteger;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->saltLengthBytes:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x800

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->publicExponent:Ljava/math/BigInteger;

    .line 187
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->validatePublicExponent(Ljava/math/BigInteger;)V

    .line 188
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    .line 189
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->publicExponent:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    iget-object v5, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    iget-object v6, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->saltLengthBytes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;-><init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;ILcom/google/crypto/tink/signature/RsaSsaPssParameters$1;)V

    return-object v0

    .line 185
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "MGF1 hash is different from signature hash"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "Invalid key size in bytes %d; must be at least %d bits"

    .line 180
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "salt length is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "mgf1 hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "signature hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "publicExponent is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMgf1HashType(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mgf1HashType"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    return-object p0
.end method

.method public setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modulusSizeBits"
        }
    .end annotation

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    return-object p0
.end method

.method public setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->publicExponent:Ljava/math/BigInteger;

    return-object p0
.end method

.method public setSaltLengthBytes(I)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saltLengthBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->saltLengthBytes:Ljava/lang/Integer;

    return-object p0

    .line 123
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Invalid salt length in bytes %d; salt length must be positive"

    .line 124
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSigHashType(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigHashType"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    return-object p0
.end method

.method public setVariant(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    return-object p0
.end method
