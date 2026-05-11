.class public final Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;
.super Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;
.source "JwtEcdsaPrivateKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field public final privateKeyValue:Lcom/google/crypto/tink/util/SecretBigInteger;

.field public final publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "privateKeyValue"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->privateKeyValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "privateValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getPublicPoint()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    move-result-object v2

    .line 62
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->validatePrivateValue(Ljava/math/BigInteger;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;)V

    .line 66
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;-><init>(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;)V

    return-object v0
.end method

.method private static validatePrivateValue(Ljava/math/BigInteger;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateValue",
            "publicPoint",
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 43
    invoke-virtual {p2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    const-string v2, "Invalid private value"

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    .line 48
    invoke-virtual {p2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->multiplyByGenerator(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECPoint;

    move-result-object p0

    .line 49
    invoke-virtual {p0, p1}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equalsKey(Lcom/google/crypto/tink/Key;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 95
    instance-of v0, p1, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 98
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;

    .line 99
    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->privateKeyValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->privateKeyValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 100
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    .line 85
    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/jwt/JwtSignatureParameters;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateValue()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->privateKeyValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/Key;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    move-result-object v0

    return-object v0
.end method
