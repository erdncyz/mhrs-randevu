.class public Lcom/google/crypto/tink/jwt/JwtHmacKey;
.super Lcom/google/crypto/tink/jwt/JwtMacKey;
.source "JwtHmacKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtHmacKey$Builder;
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

.field private final key:Lcom/google/crypto/tink/util/SecretBytes;

.field private final kid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parameters:Lcom/google/crypto/tink/jwt/JwtHmacParameters;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/jwt/JwtHmacParameters;Lcom/google/crypto/tink/util/SecretBytes;Ljava/util/Optional;Ljava/util/Optional;)V
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
            "key",
            "idRequirement",
            "kid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/jwt/JwtHmacParameters;",
            "Lcom/google/crypto/tink/util/SecretBytes;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtMacKey;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtHmacKey;->parameters:Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtHmacKey;->key:Lcom/google/crypto/tink/util/SecretBytes;

    iput-object p3, p0, Lcom/google/crypto/tink/jwt/JwtHmacKey;->idRequirement:Ljava/util/Optional;

    iput-object p4, p0, Lcom/google/crypto/tink/jwt/JwtHmacKey;->kid:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtHmacParameters;Lcom/google/crypto/tink/util/SecretBytes;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/crypto/tink/jwt/JwtHmacKey$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/jwt/JwtHmacKey;-><init>(Lcom/google/crypto/tink/jwt/JwtHmacParameters;Lcom/google/crypto/tink/util/SecretBytes;Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/jwt/JwtHmacKey$Builder;
    .locals 2

    .line 129
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtHmacKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacKey$Builder;-><init>(Lcom/google/crypto/tink/jwt/JwtHmacKey$1;)V

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

    .line 179
    instance-of v0, p1, Lcom/google/crypto/tink/jwt/JwtHmacKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 182
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtHmacKey;

    .line 183
    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtHmacKey;->parameters:Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtHmacKey;->parameters:Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtHmacKey;->key:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtHmacKey;->key:Lcom/google/crypto/tink/util/SecretBytes;

    .line 184
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBytes;->equalsSecretBytes(Lcom/google/crypto/tink/util/SecretBytes;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtHmacKey;->kid:Ljava/util/Optional;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtHmacKey;->kid:Ljava/util/Optional;

    .line 185
    invoke-virtual {v0, v2}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtHmacKey;->idRequirement:Ljava/util/Optional;

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacKey;->idRequirement:Ljava/util/Optional;

    .line 186
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

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacKey;->idRequirement:Ljava/util/Optional;

    const/4 v1, 0x0

    .line 169
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacKey;->key:Lcom/google/crypto/tink/util/SecretBytes;

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

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacKey;->kid:Ljava/util/Optional;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtHmacKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/jwt/JwtHmacParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacKey;->parameters:Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/jwt/JwtMacParameters;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtHmacKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v0

    return-object v0
.end method
