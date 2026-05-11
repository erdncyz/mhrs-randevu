.class public final Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;
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
    name = "PointFormat"
.end annotation


# static fields
.field public static final COMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

.field public static final LEGACY_UNCOMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

.field public static final UNCOMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 116
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    const-string v1, "COMPRESSED"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->COMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 117
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    const-string v1, "UNCOMPRESSED"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->UNCOMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 123
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    const-string v1, "LEGACY_UNCOMPRESSED"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->LEGACY_UNCOMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

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

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->name:Ljava/lang/String;

    return-object v0
.end method
