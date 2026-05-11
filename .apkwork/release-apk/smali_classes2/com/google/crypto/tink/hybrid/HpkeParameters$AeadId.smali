.class public final Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;
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
    name = "AeadId"
.end annotation


# static fields
.field public static final AES_128_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

.field public static final AES_256_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

.field public static final CHACHA20_POLY1305:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 114
    new-instance v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    const-string v1, "AES_128_GCM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_128_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 115
    new-instance v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    const-string v1, "AES_256_GCM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_256_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 116
    new-instance v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    const-string v1, "CHACHA20_POLY1305"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->CHACHA20_POLY1305:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

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

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/hybrid/HpkeParameters$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()I
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;->getValue()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
