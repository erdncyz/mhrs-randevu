.class public final Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;
.super Ljava/lang/Object;
.source "JwtEcdsaParameters.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Algorithm"
.end annotation


# static fields
.field public static final ES256:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

.field public static final ES384:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

.field public static final ES512:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;


# instance fields
.field private final ecParameterSpec:Ljava/security/spec/ECParameterSpec;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 85
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    const-string v1, "ES256"

    sget-object v2, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->NIST_P256_PARAMS:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES256:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    .line 88
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    const-string v1, "ES384"

    sget-object v2, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->NIST_P384_PARAMS:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES384:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    .line 91
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    const-string v1, "ES512"

    sget-object v2, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->NIST_P521_PARAMS:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES512:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "ecParameterSpec"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method


# virtual methods
.method getECParameterSpec()Ljava/security/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getStandardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->name:Ljava/lang/String;

    return-object v0
.end method
