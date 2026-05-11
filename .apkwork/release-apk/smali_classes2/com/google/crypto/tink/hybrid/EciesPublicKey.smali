.class public final Lcom/google/crypto/tink/hybrid/EciesPublicKey;
.super Lcom/google/crypto/tink/hybrid/HybridPublicKey;
.source "EciesPublicKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field private final parameters:Lcom/google/crypto/tink/hybrid/EciesParameters;

.field private final publicPointBytes:Lcom/google/crypto/tink/util/Bytes;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/hybrid/EciesParameters;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
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
            "publicPointBytes",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/HybridPublicKey;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->parameters:Lcom/google/crypto/tink/hybrid/EciesParameters;

    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->publicPointBytes:Lcom/google/crypto/tink/util/Bytes;

    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    iput-object p4, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/hybrid/EciesParameters;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/hybrid/EciesPublicKey;
    .locals 2
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "publicPointBytes",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getVariant()Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->validateIdRequirement(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Ljava/lang/Integer;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getCurveType()Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getPointFormat()Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->validatePublicPoint(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;Lcom/google/crypto/tink/util/Bytes;)V

    .line 157
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getVariant()Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->createOutputPrefix(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Ljava/lang/Integer;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;-><init>(Lcom/google/crypto/tink/hybrid/EciesParameters;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-object v1
.end method

.method private static createOutputPrefix(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Ljava/lang/Integer;)Lcom/google/crypto/tink/util/Bytes;
    .locals 3
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variant",
            "idRequirement"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-array p0, v1, [B

    .line 120
    invoke-static {p0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_3

    .line 126
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    const/4 v2, 0x5

    if-ne p0, v0, :cond_1

    .line 127
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0

    .line 129
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    if-ne p0, v0, :cond_2

    .line 130
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0

    .line 132
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown EciesParameters.Variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "idRequirement must be non-null for EciesParameters.Variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getParameterSpecNistCurve(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Ljava/security/spec/EllipticCurve;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveType"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne p0, v0, :cond_0

    .line 65
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP256Params()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    return-object p0

    .line 67
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P384:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne p0, v0, :cond_1

    .line 68
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP384Params()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    return-object p0

    .line 70
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P521:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne p0, v0, :cond_2

    .line 71
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP521Params()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    return-object p0

    .line 73
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to determine NIST curve type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getPointFormatType(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointFormat"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->COMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    if-ne p0, v0, :cond_0

    .line 79
    sget-object p0, Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;->COMPRESSED:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    return-object p0

    .line 81
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->UNCOMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    if-ne p0, v0, :cond_1

    .line 82
    sget-object p0, Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;->UNCOMPRESSED:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    return-object p0

    .line 84
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->LEGACY_UNCOMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    if-ne p0, v0, :cond_2

    .line 85
    sget-object p0, Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;->DO_NOT_USE_CRUNCHY_UNCOMPRESSED:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    return-object p0

    .line 88
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to determine point format type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateIdRequirement(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variant",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'idRequirement\' must be non-null for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " variant."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 59
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "\'idRequirement\' must be null for NO_PREFIX variant."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method private static validatePublicPoint(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;Lcom/google/crypto/tink/util/Bytes;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "curveType",
            "pointFormat",
            "publicPointBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->X25519:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne p0, v0, :cond_1

    .line 101
    invoke-virtual {p2}, Lcom/google/crypto/tink/util/Bytes;->size()I

    move-result p0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    return-void

    .line 102
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Encoded public point byte length for X25519 curve must be 32"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_1
    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->getParameterSpecNistCurve(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Ljava/security/spec/EllipticCurve;

    move-result-object p0

    .line 110
    invoke-static {p1}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->getPointFormatType(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    move-result-object p1

    .line 114
    invoke-virtual {p2}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/subtle/EllipticCurves;->pointDecode(Ljava/security/spec/EllipticCurve;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;[B)Ljava/security/spec/ECPoint;

    return-void
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

    .line 194
    instance-of v0, p1, Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 197
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->parameters:Lcom/google/crypto/tink/hybrid/EciesParameters;

    .line 199
    iget-object v2, p1, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->parameters:Lcom/google/crypto/tink/hybrid/EciesParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->publicPointBytes:Lcom/google/crypto/tink/util/Bytes;

    iget-object v2, p1, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->publicPointBytes:Lcom/google/crypto/tink/util/Bytes;

    .line 200
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/Bytes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->idRequirement:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->idRequirement:Ljava/lang/Integer;

    .line 201
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->parameters:Lcom/google/crypto/tink/hybrid/EciesParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/hybrid/HybridParameters;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPublicPointBytes()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->publicPointBytes:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method
