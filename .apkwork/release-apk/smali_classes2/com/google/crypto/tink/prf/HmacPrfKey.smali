.class public final Lcom/google/crypto/tink/prf/HmacPrfKey;
.super Lcom/google/crypto/tink/prf/PrfKey;
.source "HmacPrfKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/prf/HmacPrfKey$Builder;
    }
.end annotation


# instance fields
.field private final keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field private final parameters:Lcom/google/crypto/tink/prf/HmacPrfParameters;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/prf/HmacPrfParameters;Lcom/google/crypto/tink/util/SecretBytes;)V
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

    .line 73
    invoke-direct {p0}, Lcom/google/crypto/tink/prf/PrfKey;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/prf/HmacPrfKey;->parameters:Lcom/google/crypto/tink/prf/HmacPrfParameters;

    iput-object p2, p0, Lcom/google/crypto/tink/prf/HmacPrfKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/prf/HmacPrfParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/prf/HmacPrfKey$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/prf/HmacPrfKey;-><init>(Lcom/google/crypto/tink/prf/HmacPrfParameters;Lcom/google/crypto/tink/util/SecretBytes;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/prf/HmacPrfKey$Builder;
    .locals 2

    .line 84
    new-instance v0, Lcom/google/crypto/tink/prf/HmacPrfKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/prf/HmacPrfKey$Builder;-><init>(Lcom/google/crypto/tink/prf/HmacPrfKey$1;)V

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

    .line 109
    instance-of v0, p1, Lcom/google/crypto/tink/prf/HmacPrfKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/prf/HmacPrfKey;

    .line 113
    iget-object v0, p1, Lcom/google/crypto/tink/prf/HmacPrfKey;->parameters:Lcom/google/crypto/tink/prf/HmacPrfParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/prf/HmacPrfKey;->parameters:Lcom/google/crypto/tink/prf/HmacPrfParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/prf/HmacPrfParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/prf/HmacPrfKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v0, p0, Lcom/google/crypto/tink/prf/HmacPrfKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

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

    iget-object v0, p0, Lcom/google/crypto/tink/prf/HmacPrfKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/HmacPrfKey;->getParameters()Lcom/google/crypto/tink/prf/HmacPrfParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/prf/HmacPrfParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/prf/HmacPrfKey;->parameters:Lcom/google/crypto/tink/prf/HmacPrfParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/prf/PrfParameters;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/HmacPrfKey;->getParameters()Lcom/google/crypto/tink/prf/HmacPrfParameters;

    move-result-object v0

    return-object v0
.end method
