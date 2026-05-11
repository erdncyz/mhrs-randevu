.class public final Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;
.super Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;
.source "HpkeParameters.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/hybrid/HpkeParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KemId"
.end annotation


# static fields
.field public static final DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

.field public static final DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

.field public static final DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

.field public static final DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    new-instance v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    const-string v1, "DHKEM_P256_HKDF_SHA256"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 81
    new-instance v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    const-string v1, "DHKEM_P384_HKDF_SHA384"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 82
    new-instance v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    const-string v1, "DHKEM_P521_HKDF_SHA512"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 83
    new-instance v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    const-string v1, "DHKEM_X25519_HKDF_SHA256"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
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

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/hybrid/HpkeParameters$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()I
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;->getValue()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
