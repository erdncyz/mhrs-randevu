.class public final Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;
.super Ljava/lang/Object;
.source "RsaSsaPssParameters.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPssParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HashType"
.end annotation


# static fields
.field public static final SHA256:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

.field public static final SHA384:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

.field public static final SHA512:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    const-string v1, "SHA256"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 62
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    const-string v1, "SHA384"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA384:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 63
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    const-string v1, "SHA512"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->name:Ljava/lang/String;

    return-object v0
.end method
