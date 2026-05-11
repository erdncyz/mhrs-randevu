.class public final Lcom/google/crypto/tink/hybrid/EciesParameters;
.super Lcom/google/crypto/tink/hybrid/HybridParameters;
.source "EciesParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;,
        Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;,
        Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;,
        Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;,
        Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;
    }
.end annotation


# instance fields
.field private final curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

.field private final demParameters:Lcom/google/crypto/tink/Parameters;

.field private final hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

.field private final pointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

.field private final salt:Lcom/google/crypto/tink/util/Bytes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;Lcom/google/crypto/tink/Parameters;Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Lcom/google/crypto/tink/util/Bytes;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "curveType",
            "hashType",
            "pointFormat",
            "demParameters",
            "variant",
            "salt"
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/HybridParameters;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->pointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    iput-object p4, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->demParameters:Lcom/google/crypto/tink/Parameters;

    iput-object p5, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    iput-object p6, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->salt:Lcom/google/crypto/tink/util/Bytes;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;Lcom/google/crypto/tink/Parameters;Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/hybrid/EciesParameters$1;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/google/crypto/tink/hybrid/EciesParameters;-><init>(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;Lcom/google/crypto/tink/Parameters;Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Lcom/google/crypto/tink/util/Bytes;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
    .locals 2

    .line 255
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;-><init>(Lcom/google/crypto/tink/hybrid/EciesParameters$1;)V

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

    .line 297
    instance-of v0, p1, Lcom/google/crypto/tink/hybrid/EciesParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 300
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/hybrid/EciesParameters;

    .line 301
    invoke-virtual {p1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getCurveType()Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getCurveType()Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {p1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getHashType()Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getHashType()Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getPointFormat()Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getPointFormat()Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getDemParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getDemParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getVariant()Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getVariant()Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getSalt()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getSalt()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCurveType()Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    return-object v0
.end method

.method public getDemParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->demParameters:Lcom/google/crypto/tink/Parameters;

    return-object v0
.end method

.method public getHashType()Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    return-object v0
.end method

.method public getPointFormat()Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->pointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    return-object v0
.end method

.method public getSalt()Lcom/google/crypto/tink/util/Bytes;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->salt:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public getVariant()Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 292
    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

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

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Lcom/google/crypto/tink/hybrid/EciesParameters;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->pointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->demParameters:Lcom/google/crypto/tink/Parameters;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->salt:Lcom/google/crypto/tink/util/Bytes;

    aput-object v2, v0, v1

    .line 311
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
