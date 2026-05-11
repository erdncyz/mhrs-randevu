.class public abstract Lcom/google/crypto/tink/jwt/JwtMacKey;
.super Lcom/google/crypto/tink/Key;
.source "JwtMacKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/crypto/tink/Key;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getKid()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtMacKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtMacParameters;

    move-result-object v0

    return-object v0
.end method

.method public abstract getParameters()Lcom/google/crypto/tink/jwt/JwtMacParameters;
.end method
