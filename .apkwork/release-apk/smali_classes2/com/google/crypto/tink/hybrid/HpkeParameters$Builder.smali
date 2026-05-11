.class public final Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;
.super Ljava/lang/Object;
.source "HpkeParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/hybrid/HpkeParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

.field private kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

.field private kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

.field private variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 128
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/hybrid/HpkeParameters$1;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/hybrid/HpkeParameters;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    if-eqz v4, :cond_0

    .line 169
    new-instance v6, Lcom/google/crypto/tink/hybrid/HpkeParameters;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/hybrid/HpkeParameters;-><init>(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;Lcom/google/crypto/tink/hybrid/HpkeParameters$1;)V

    return-object v6

    .line 167
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE AEAD parameter is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE KDF parameter is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE KEM parameter is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aead"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    return-object p0
.end method

.method public setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kdf"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    return-object p0
.end method

.method public setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kem"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    return-object p0
.end method

.method public setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    return-object p0
.end method
