.class public final Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;
.super Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;
.source "JwtEcdsaPublicKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;
    }
.end annotation


# instance fields
.field private final idRequirement:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final kid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parameters:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

.field private final publicPoint:Ljava/security/spec/ECPoint;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;Ljava/security/spec/ECPoint;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "publicPoint",
            "kid",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;",
            "Ljava/security/spec/ECPoint;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->publicPoint:Ljava/security/spec/ECPoint;

    iput-object p3, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->kid:Ljava/util/Optional;

    iput-object p4, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->idRequirement:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;Ljava/security/spec/ECPoint;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;-><init>(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;Ljava/security/spec/ECPoint;Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;
    .locals 2

    .line 142
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;-><init>(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$1;)V

    return-object v0
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

    .line 172
    instance-of v0, p1, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    .line 176
    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->publicPoint:Ljava/security/spec/ECPoint;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->publicPoint:Ljava/security/spec/ECPoint;

    .line 177
    invoke-virtual {v0, v2}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->kid:Ljava/util/Optional;

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->kid:Ljava/util/Optional;

    .line 178
    invoke-virtual {p1, v0}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->idRequirement:Ljava/util/Optional;

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getKid()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->kid:Ljava/util/Optional;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/jwt/JwtSignatureParameters;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPublicPoint()Ljava/security/spec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->publicPoint:Ljava/security/spec/ECPoint;

    return-object v0
.end method
