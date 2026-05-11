.class public abstract Lcom/google/crypto/tink/hybrid/HybridPrivateKey;
.super Lcom/google/crypto/tink/Key;
.source "HybridPrivateKey.java"

# interfaces
.implements Lcom/google/crypto/tink/PrivateKey;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/crypto/tink/Key;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HybridPrivateKey;->getPublicKey()Lcom/google/crypto/tink/hybrid/HybridPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HybridPublicKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HybridPrivateKey;->getPublicKey()Lcom/google/crypto/tink/hybrid/HybridPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HybridPublicKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HybridPrivateKey;->getParameters()Lcom/google/crypto/tink/hybrid/HybridParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/hybrid/HybridParameters;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HybridPrivateKey;->getPublicKey()Lcom/google/crypto/tink/hybrid/HybridPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HybridPublicKey;->getParameters()Lcom/google/crypto/tink/hybrid/HybridParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/Key;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HybridPrivateKey;->getPublicKey()Lcom/google/crypto/tink/hybrid/HybridPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPublicKey()Lcom/google/crypto/tink/hybrid/HybridPublicKey;
.end method
