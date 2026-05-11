.class public Lcom/google/crypto/tink/jwt/JwtHmacParameters;
.super Lcom/google/crypto/tink/jwt/JwtMacParameters;
.source "JwtHmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;,
        Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;,
        Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;
    }
.end annotation


# instance fields
.field private final algorithm:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

.field private final keySizeBytes:I

.field private final kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;


# direct methods
.method private constructor <init>(ILcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keySizeBytes",
            "kidStrategy",
            "algorithm"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtMacParameters;-><init>()V

    iput p1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->keySizeBytes:I

    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    iput-object p3, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;Lcom/google/crypto/tink/jwt/JwtHmacParameters$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;-><init>(ILcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;
    .locals 2

    .line 145
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;-><init>(Lcom/google/crypto/tink/jwt/JwtHmacParameters$1;)V

    return-object v0
.end method


# virtual methods
.method public allowKidAbsent()Z
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 177
    sget-object v1, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->CUSTOM:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 178
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

    .line 183
    instance-of v0, p1, Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 186
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    .line 187
    iget v0, p1, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->keySizeBytes:I

    iget v2, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->keySizeBytes:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlgorithm()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    return-object v0
.end method

.method public getKeySizeBytes()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->keySizeBytes:I

    return v0
.end method

.method public getKidStrategy()Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 172
    sget-object v1, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->keySizeBytes:I

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JWT HMAC Parameters (kidStrategy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->keySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
