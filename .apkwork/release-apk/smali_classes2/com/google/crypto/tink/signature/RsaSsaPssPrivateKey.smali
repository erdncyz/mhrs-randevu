.class public final Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;
.super Lcom/google/crypto/tink/signature/SignaturePrivateKey;
.source "RsaSsaPssPrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;
    }
.end annotation


# instance fields
.field private final d:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final dP:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final p:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final publicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

.field private final q:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final qInv:Lcom/google/crypto/tink/util/SecretBigInteger;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)V
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

    .line 182
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignaturePrivateKey;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    iput-object p2, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    iput-object p3, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    iput-object p4, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    iput-object p5, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    iput-object p6, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    iput-object p7, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$1;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;
    .locals 2

    .line 198
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$1;)V

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

    .line 255
    instance-of v0, p1, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 258
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    .line 259
    iget-object v0, p1, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 260
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 261
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 262
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 263
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 264
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object p1, p1, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 265
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCrtCoefficient()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    .line 204
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/signature/SignatureParameters;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeExponentP()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrimeExponentQ()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrimeP()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrimeQ()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/Key;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/signature/SignaturePublicKey;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    move-result-object v0

    return-object v0
.end method
