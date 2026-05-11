.class public final Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;
.super Ljava/lang/Object;
.source "EciesParameters.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/hybrid/EciesParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurveType"
.end annotation


# static fields
.field public static final NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

.field public static final NIST_P384:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

.field public static final NIST_P521:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

.field public static final X25519:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    const-string v1, "NIST_P256"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 76
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    const-string v1, "NIST_P384"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P384:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 77
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    const-string v1, "NIST_P521"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P521:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 78
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    const-string v1, "X25519"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->X25519:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->name:Ljava/lang/String;

    return-object v0
.end method
