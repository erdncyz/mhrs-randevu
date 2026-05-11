.class public final Lcom/google/crypto/tink/daead/AesSivKey;
.super Lcom/google/crypto/tink/daead/DeterministicAeadKey;
.source "AesSivKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/daead/AesSivKey$Builder;
    }
.end annotation


# instance fields
.field private final idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field private final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field private final parameters:Lcom/google/crypto/tink/daead/AesSivParameters;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/daead/AesSivParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
    .locals 0
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "keyBytes",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/google/crypto/tink/daead/DeterministicAeadKey;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/daead/AesSivKey;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    iput-object p2, p0, Lcom/google/crypto/tink/daead/AesSivKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iput-object p3, p0, Lcom/google/crypto/tink/daead/AesSivKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    iput-object p4, p0, Lcom/google/crypto/tink/daead/AesSivKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/daead/AesSivParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/daead/AesSivKey$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/daead/AesSivKey;-><init>(Lcom/google/crypto/tink/daead/AesSivParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/daead/AesSivKey$Builder;
    .locals 2

    .line 127
    new-instance v0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/daead/AesSivKey$Builder;-><init>(Lcom/google/crypto/tink/daead/AesSivKey$1;)V

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

    .line 158
    instance-of v0, p1, Lcom/google/crypto/tink/daead/AesSivKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 161
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/daead/AesSivKey;

    .line 163
    iget-object v0, p1, Lcom/google/crypto/tink/daead/AesSivKey;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/daead/AesSivKey;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/daead/AesSivParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/daead/AesSivKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v2, p0, Lcom/google/crypto/tink/daead/AesSivKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 164
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBytes;->equalsSecretBytes(Lcom/google/crypto/tink/util/SecretBytes;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/daead/AesSivKey;->idRequirement:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey;->idRequirement:Ljava/lang/Integer;

    .line 165
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/AesSivKey;->getParameters()Lcom/google/crypto/tink/daead/AesSivParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/daead/AesSivParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/daead/DeterministicAeadParameters;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/AesSivKey;->getParameters()Lcom/google/crypto/tink/daead/AesSivParameters;

    move-result-object v0

    return-object v0
.end method
