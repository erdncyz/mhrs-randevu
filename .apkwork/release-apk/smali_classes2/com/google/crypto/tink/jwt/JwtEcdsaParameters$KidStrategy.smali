.class public final Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;
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
    name = "KidStrategy"
.end annotation


# static fields
.field public static final BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

.field public static final CUSTOM:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

.field public static final IGNORED:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    const-string v1, "BASE64_ENCODED_KEY_ID"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    .line 53
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    const-string v1, "IGNORED"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    .line 67
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->CUSTOM:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

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

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->name:Ljava/lang/String;

    return-object v0
.end method
