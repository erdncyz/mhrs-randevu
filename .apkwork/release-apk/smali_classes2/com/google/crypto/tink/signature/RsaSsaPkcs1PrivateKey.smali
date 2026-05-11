.class public final Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;
.super Lcom/google/crypto/tink/signature/SignaturePrivateKey;
.source "RsaSsaPkcs1PrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;
    }
.end annotation


# instance fields
.field private final d:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final dP:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final p:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

.field private final q:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final qInv:Lcom/google/crypto/tink/util/SecretBigInteger;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "p",
            "q",
            "d",
            "dP",
            "dQ",
            "qInv"
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignaturePrivateKey;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    iput-object p2, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    iput-object p3, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    iput-object p4, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    iput-object p5, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    iput-object p6, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    iput-object p7, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$1;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p7}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;
    .locals 2

    .line 203
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$1;)V

    return-object v0
.end method


# virtual methods
.method public equalsKey(Lcom/google/crypto/tink/Key;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 260
    instance-of v0, p1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 263
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    .line 264
    iget-object v0, p1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 265
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 266
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 267
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 268
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 269
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object p1, p1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 270
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCrtCoefficient()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    .line 209
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/signature/SignatureParameters;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeExponentP()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrimeExponentQ()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrimeP()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrimeQ()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/Key;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/signature/SignaturePublicKey;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    move-result-object v0

    return-object v0
.end method
