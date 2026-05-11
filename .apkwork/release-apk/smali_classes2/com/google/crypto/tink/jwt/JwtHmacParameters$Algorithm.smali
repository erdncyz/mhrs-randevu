.class public final Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;
.super Ljava/lang/Object;
.source "JwtHmacParameters.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtHmacParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Algorithm"
.end annotation


# static fields
.field public static final HS256:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

.field public static final HS384:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

.field public static final HS512:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    const-string v1, "HS256"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS256:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    .line 82
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    const-string v1, "HS384"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS384:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    .line 83
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    const-string v1, "HS512"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS512:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

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

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStandardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->name:Ljava/lang/String;

    return-object v0
.end method
