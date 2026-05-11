.class Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;
.super Ljava/lang/Object;
.source "HpkeParameters.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/hybrid/HpkeParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlgorithmIdentifier"
.end annotation


# instance fields
.field protected final name:Ljava/lang/String;

.field protected final value:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;->name:Ljava/lang/String;

    iput p2, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;->value:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/crypto/tink/hybrid/HpkeParameters$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;->value:I

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s(0x%04x)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
