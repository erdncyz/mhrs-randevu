.class public final Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;
.super Ljava/lang/Object;
.source "JwtEcdsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;
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
            "Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;",
            ">;"
        }
    .end annotation
.end field

.field kidStrategy:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->kidStrategy:Ljava/util/Optional;

    .line 121
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->algorithm:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$1;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->algorithm:Ljava/util/Optional;

    .line 136
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->kidStrategy:Ljava/util/Optional;

    .line 139
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->kidStrategy:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->algorithm:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;-><init>(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$1;)V

    return-object v0

    .line 140
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "KidStrategy must be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Algorithm must be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlgorithm(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .line 131
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->algorithm:Ljava/util/Optional;

    return-object p0
.end method

.method public setKidStrategy(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kidStrategy"
        }
    .end annotation

    .line 125
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->kidStrategy:Ljava/util/Optional;

    return-object p0
.end method
