.class public abstract Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;
.super Lcom/google/crypto/tink/Key;
.source "JwtSignaturePrivateKey.java"

# interfaces
.implements Lcom/google/crypto/tink/PrivateKey;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/crypto/tink/Key;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object v0

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

    .line 52
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;->getKid()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtSignatureParameters;

    move-result-object v0

    return-object v0
.end method

.method public abstract getParameters()Lcom/google/crypto/tink/jwt/JwtSignatureParameters;
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/Key;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPublicKey()Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;
.end method
