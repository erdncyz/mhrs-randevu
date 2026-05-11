.class public final Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;
.super Lcom/google/crypto/tink/signature/SignatureParameters;
.source "RsaSsaPkcs1Parameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;,
        Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;,
        Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;
    }
.end annotation


# static fields
.field public static final F4:Ljava/math/BigInteger;


# instance fields
.field private final hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

.field private final modulusSizeBits:I

.field private final publicExponent:Ljava/math/BigInteger;

.field private final variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x10001

    .line 82
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modulusSizeBits",
            "publicExponent",
            "variant",
            "hashType"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignatureParameters;-><init>()V

    iput p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->modulusSizeBits:I

    iput-object p2, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->publicExponent:Ljava/math/BigInteger;

    iput-object p3, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    iput-object p4, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    return-void
.end method

.method synthetic constructor <init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;-><init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;
    .locals 2

    .line 181
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 202
    instance-of v0, p1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 205
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    .line 206
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getModulusSizeBits()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getModulusSizeBits()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 207
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getVariant()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getVariant()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 209
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getHashType()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getHashType()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getHashType()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    return-object v0
.end method

.method public getModulusSizeBits()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->modulusSizeBits:I

    return v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getVariant()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 220
    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->modulusSizeBits:I

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->publicExponent:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    aput-object v2, v0, v1

    .line 214
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RSA SSA PKCS1 Parameters (variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", publicExponent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->modulusSizeBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-bit modulus)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
