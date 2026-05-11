.class public final Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;
.super Lcom/google/crypto/tink/jwt/JwtSignatureParameters;
.source "JwtEcdsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;,
        Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;,
        Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;
    }
.end annotation


# instance fields
.field private final algorithm:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

.field private final kidStrategy:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kidStrategy",
            "algorithm"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtSignatureParameters;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;-><init>(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;
    .locals 2

    .line 149
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;-><init>(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$1;)V

    return-object v0
.end method


# virtual methods
.method public allowKidAbsent()Z
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    .line 175
    sget-object v1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->CUSTOM:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 180
    instance-of v0, p1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 183
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    .line 184
    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlgorithm()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    return-object v0
.end method

.method public getKidStrategy()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    .line 170
    sget-object v1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    aput-object v2, v0, v1

    .line 189
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JWT ECDSA Parameters (kidStrategy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
