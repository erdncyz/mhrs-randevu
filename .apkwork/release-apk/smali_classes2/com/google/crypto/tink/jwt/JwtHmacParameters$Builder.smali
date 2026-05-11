.class public final Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;
.super Ljava/lang/Object;
.source "JwtHmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtHmacParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field algorithm:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;",
            ">;"
        }
    .end annotation
.end field

.field keySizeBytes:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field kidStrategy:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->keySizeBytes:Ljava/util/Optional;

    .line 104
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->kidStrategy:Ljava/util/Optional;

    .line 105
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->algorithm:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtHmacParameters$1;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/jwt/JwtHmacParameters;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->keySizeBytes:Ljava/util/Optional;

    .line 126
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->algorithm:Ljava/util/Optional;

    .line 129
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->kidStrategy:Ljava/util/Optional;

    .line 132
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->keySizeBytes:Ljava/util/Optional;

    .line 135
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 138
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->keySizeBytes:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->kidStrategy:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    iget-object v3, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->algorithm:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;-><init>(ILcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;Lcom/google/crypto/tink/jwt/JwtHmacParameters$1;)V

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size must be at least 16 bytes"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "KidStrategy must be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Algorithm must be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key Size must be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlgorithm(Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .line 121
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->algorithm:Ljava/util/Optional;

    return-object p0
.end method

.method public setKeySizeBytes(I)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySizeBytes"
        }
    .end annotation

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->keySizeBytes:Ljava/util/Optional;

    return-object p0
.end method

.method public setKidStrategy(Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kidStrategy"
        }
    .end annotation

    .line 115
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->kidStrategy:Ljava/util/Optional;

    return-object p0
.end method
