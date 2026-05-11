.class public final Lcom/google/crypto/tink/daead/AesSivParameters;
.super Lcom/google/crypto/tink/daead/DeterministicAeadParameters;
.source "AesSivParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/daead/AesSivParameters$Builder;,
        Lcom/google/crypto/tink/daead/AesSivParameters$Variant;
    }
.end annotation


# instance fields
.field private final keySizeBytes:I

.field private final variant:Lcom/google/crypto/tink/daead/AesSivParameters$Variant;


# direct methods
.method private constructor <init>(ILcom/google/crypto/tink/daead/AesSivParameters$Variant;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySizeBytes",
            "variant"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/google/crypto/tink/daead/DeterministicAeadParameters;-><init>()V

    iput p1, p0, Lcom/google/crypto/tink/daead/AesSivParameters;->keySizeBytes:I

    iput-object p2, p0, Lcom/google/crypto/tink/daead/AesSivParameters;->variant:Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/crypto/tink/daead/AesSivParameters$Variant;Lcom/google/crypto/tink/daead/AesSivParameters$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/daead/AesSivParameters;-><init>(ILcom/google/crypto/tink/daead/AesSivParameters$Variant;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/daead/AesSivParameters$Builder;
    .locals 2

    .line 93
    new-instance v0, Lcom/google/crypto/tink/daead/AesSivParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/daead/AesSivParameters$Builder;-><init>(Lcom/google/crypto/tink/daead/AesSivParameters$1;)V

    return-object v0
.end method


# virtual methods
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

    .line 107
    instance-of v0, p1, Lcom/google/crypto/tink/daead/AesSivParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/daead/AesSivParameters;

    .line 111
    invoke-virtual {p1}, Lcom/google/crypto/tink/daead/AesSivParameters;->getKeySizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/AesSivParameters;->getKeySizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/crypto/tink/daead/AesSivParameters;->getVariant()Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/AesSivParameters;->getVariant()Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getKeySizeBytes()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/daead/AesSivParameters;->keySizeBytes:I

    return v0
.end method

.method public getVariant()Lcom/google/crypto/tink/daead/AesSivParameters$Variant;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivParameters;->variant:Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivParameters;->variant:Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    .line 121
    sget-object v1, Lcom/google/crypto/tink/daead/AesSivParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Lcom/google/crypto/tink/daead/AesSivParameters;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/crypto/tink/daead/AesSivParameters;->keySizeBytes:I

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/daead/AesSivParameters;->variant:Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AesSiv Parameters (variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/daead/AesSivParameters;->variant:Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/daead/AesSivParameters;->keySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
