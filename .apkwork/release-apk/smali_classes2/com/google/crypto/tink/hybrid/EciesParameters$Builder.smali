.class public final Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
.super Ljava/lang/Object;
.source "EciesParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/hybrid/EciesParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

.field private demParameters:Lcom/google/crypto/tink/Parameters;

.field private hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

.field private pointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

.field private salt:Lcom/google/crypto/tink/util/Bytes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->pointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->demParameters:Lcom/google/crypto/tink/Parameters;

    .line 143
    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    iput-object v1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->salt:Lcom/google/crypto/tink/util/Bytes;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/hybrid/EciesParameters$1;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/hybrid/EciesParameters;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->pointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->demParameters:Lcom/google/crypto/tink/Parameters;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    if-eqz v1, :cond_2

    .line 225
    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->X25519:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->pointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->COMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "X25519 only supports compressed elliptic curve points"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesParameters;

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    iget-object v4, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    iget-object v5, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->pointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    iget-object v6, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->demParameters:Lcom/google/crypto/tink/Parameters;

    iget-object v7, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    iget-object v8, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->salt:Lcom/google/crypto/tink/util/Bytes;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/crypto/tink/hybrid/EciesParameters;-><init>(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;Lcom/google/crypto/tink/Parameters;Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/hybrid/EciesParameters$1;)V

    return-object v0

    .line 222
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "DEM parameters are not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Point format is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Elliptic curve type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveType"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    return-object p0
.end method

.method public setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "demParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 173
    instance-of v0, p1, Lcom/google/crypto/tink/aead/AesGcmParameters;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/crypto/tink/daead/AesSivParameters;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Invalid DEM parameters; only instances of AesGcmParameters, AesCtrHmacAeadParameters, XChaCha20Poly1305Parameters or AesSivParameters are currently supported."

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/Parameters;->hasIdRequirement()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->demParameters:Lcom/google/crypto/tink/Parameters;

    return-object p0

    .line 183
    :cond_2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Invalid DEM parameters: only parameters without prefix are accepted."

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashType"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    return-object p0
.end method

.method public setPointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointFormat"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->pointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    return-object p0
.end method

.method public setSalt(Lcom/google/crypto/tink/util/Bytes;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "salt"
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/Bytes;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->salt:Lcom/google/crypto/tink/util/Bytes;

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->salt:Lcom/google/crypto/tink/util/Bytes;

    return-object p0
.end method

.method public setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    return-object p0
.end method
