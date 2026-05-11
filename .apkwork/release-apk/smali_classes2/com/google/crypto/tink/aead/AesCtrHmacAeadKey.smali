.class public final Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;
.super Lcom/google/crypto/tink/aead/AeadKey;
.source "AesCtrHmacAeadKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;
    }
.end annotation


# instance fields
.field private final aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field private final hmacKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field private final idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field private final parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
    .locals 0
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "aesKeyBytes",
            "hmacKeyBytes",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadKey;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    iput-object p2, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iput-object p3, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->hmacKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iput-object p4, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    iput-object p5, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$1;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;-><init>(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;
    .locals 2

    .line 136
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;-><init>(Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$1;)V

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

    .line 177
    instance-of v0, p1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 180
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;

    .line 182
    iget-object v0, p1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 183
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBytes;->equalsSecretBytes(Lcom/google/crypto/tink/util/SecretBytes;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->hmacKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->hmacKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 184
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBytes;->equalsSecretBytes(Lcom/google/crypto/tink/util/SecretBytes;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->idRequirement:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->idRequirement:Ljava/lang/Integer;

    .line 185
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAesKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public getHmacKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->hmacKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->getParameters()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/aead/AeadParameters;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->getParameters()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    return-object v0
.end method
