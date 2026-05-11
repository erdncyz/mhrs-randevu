.class public Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;
.super Ljava/lang/Object;
.source "JwtEcdsaPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private customKid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private idRequirement:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private parameters:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;",
            ">;"
        }
    .end annotation
.end field

.field private publicPoint:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/security/spec/ECPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->parameters:Ljava/util/Optional;

    .line 46
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->publicPoint:Ljava/util/Optional;

    .line 47
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->idRequirement:Ljava/util/Optional;

    .line 48
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->customKid:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$1;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;-><init>()V

    return-void
.end method

.method private computeKid()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->parameters:Ljava/util/Optional;

    .line 78
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    .line 79
    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->getKidStrategy()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->customKid:Ljava/util/Optional;

    .line 81
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 85
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->idRequirement:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "customKid must not be set for KidStrategy BASE64_ENCODED_KEY_ID"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->parameters:Ljava/util/Optional;

    .line 88
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->getKidStrategy()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->CUSTOM:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->customKid:Ljava/util/Optional;

    .line 89
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->customKid:Ljava/util/Optional;

    return-object v0

    .line 90
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "customKid needs to be set for KidStrategy CUSTOM"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->parameters:Ljava/util/Optional;

    .line 94
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->getKidStrategy()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->customKid:Ljava/util/Optional;

    .line 95
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 96
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "customKid must not be set for KidStrategy IGNORED"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown kid strategy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->parameters:Ljava/util/Optional;

    .line 104
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->publicPoint:Ljava/util/Optional;

    .line 107
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->publicPoint:Ljava/util/Optional;

    .line 111
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECPoint;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->parameters:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->checkPointOnCurve(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->parameters:Ljava/util/Optional;

    .line 112
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->hasIdRequirement()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->idRequirement:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->parameters:Ljava/util/Optional;

    .line 116
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->hasIdRequirement()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->idRequirement:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 117
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_3
    :goto_1
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->parameters:Ljava/util/Optional;

    .line 121
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->publicPoint:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/security/spec/ECPoint;

    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->computeKid()Ljava/util/Optional;

    move-result-object v5

    iget-object v6, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->idRequirement:Ljava/util/Optional;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;-><init>(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;Ljava/security/spec/ECPoint;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$1;)V

    return-object v0

    .line 108
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without public point"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCustomKid(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customKid"
        }
    .end annotation

    .line 72
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->customKid:Ljava/util/Optional;

    return-object p0
.end method

.method public setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idRequirement"
        }
    .end annotation

    .line 66
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->idRequirement:Ljava/util/Optional;

    return-object p0
.end method

.method public setParameters(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;)Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 54
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->parameters:Ljava/util/Optional;

    return-object p0
.end method

.method public setPublicPoint(Ljava/security/spec/ECPoint;)Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicPoint"
        }
    .end annotation

    .line 60
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->publicPoint:Ljava/util/Optional;

    return-object p0
.end method
