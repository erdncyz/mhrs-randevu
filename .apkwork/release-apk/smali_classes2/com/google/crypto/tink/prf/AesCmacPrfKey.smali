.class public final Lcom/google/crypto/tink/prf/AesCmacPrfKey;
.super Lcom/google/crypto/tink/prf/PrfKey;
.source "AesCmacPrfKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field private final parameters:Lcom/google/crypto/tink/prf/AesCmacPrfParameters;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/prf/AesCmacPrfParameters;Lcom/google/crypto/tink/util/SecretBytes;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "keyBytes"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/google/crypto/tink/prf/PrfKey;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->parameters:Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    iput-object p2, p0, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/prf/AesCmacPrfParameters;Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/prf/AesCmacPrfKey;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "keyBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->getKeySizeBytes()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 56
    new-instance v0, Lcom/google/crypto/tink/prf/AesCmacPrfKey;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/prf/AesCmacPrfKey;-><init>(Lcom/google/crypto/tink/prf/AesCmacPrfParameters;Lcom/google/crypto/tink/util/SecretBytes;)V

    return-object v0

    .line 54
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Key size mismatch"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 81
    instance-of v0, p1, Lcom/google/crypto/tink/prf/AesCmacPrfKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 84
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/prf/AesCmacPrfKey;

    .line 85
    iget-object v0, p1, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->parameters:Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->parameters:Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v0, p0, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/util/SecretBytes;->equalsSecretBytes(Lcom/google/crypto/tink/util/SecretBytes;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->getParameters()Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/prf/AesCmacPrfParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->parameters:Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/prf/PrfParameters;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->getParameters()Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    move-result-object v0

    return-object v0
.end method
