.class public final Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;
.super Lcom/google/crypto/tink/keyderivation/KeyDerivationKey;
.source "PrfBasedKeyDerivationKey.java"


# instance fields
.field private final idRequirementOrNull:Ljava/lang/Integer;

.field private final parameters:Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

.field private final prfKey:Lcom/google/crypto/tink/prf/PrfKey;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;Lcom/google/crypto/tink/prf/PrfKey;Ljava/lang/Integer;)V
    .locals 0
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "prfKey",
            "idRequirement"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/google/crypto/tink/keyderivation/KeyDerivationKey;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->parameters:Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    iput-object p2, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->prfKey:Lcom/google/crypto/tink/prf/PrfKey;

    iput-object p3, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->idRequirementOrNull:Ljava/lang/Integer;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;Lcom/google/crypto/tink/prf/PrfKey;Ljava/lang/Integer;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;
    .locals 2
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "prfKey",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->getPrfParameters()Lcom/google/crypto/tink/prf/PrfParameters;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/prf/PrfKey;->getParameters()Lcom/google/crypto/tink/prf/PrfParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->getDerivedKeyParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/Parameters;->hasIdRequirement()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Derived key has an ID requirement, but no idRequirement was passed in on creation of this key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->getDerivedKeyParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/Parameters;->hasIdRequirement()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 60
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Derived key has no ID requirement, but idRequirement was passed in on creation of this key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_3
    :goto_1
    new-instance v0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;-><init>(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;Lcom/google/crypto/tink/prf/PrfKey;Ljava/lang/Integer;)V

    return-object v0

    .line 44
    :cond_4
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrfParameters of passed in PrfBasedKeyDerivationParameters and passed in prfKey parameters object must match. DerivationParameters gave: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->getPrfParameters()Lcom/google/crypto/tink/prf/PrfParameters;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", key gives: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Lcom/google/crypto/tink/prf/PrfKey;->getParameters()Lcom/google/crypto/tink/prf/PrfParameters;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public equalsKey(Lcom/google/crypto/tink/Key;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 101
    instance-of v0, p1, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 105
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;

    .line 106
    invoke-virtual {p1}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->getParameters()Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->getParameters()Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->prfKey:Lcom/google/crypto/tink/prf/PrfKey;

    iget-object v2, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->prfKey:Lcom/google/crypto/tink/prf/PrfKey;

    .line 107
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/prf/PrfKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->idRequirementOrNull:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->idRequirementOrNull:Ljava/lang/Integer;

    .line 108
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->idRequirementOrNull:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->getParameters()Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/keyderivation/KeyDerivationParameters;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->getParameters()Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->parameters:Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    return-object v0
.end method

.method public getPrfKey()Lcom/google/crypto/tink/prf/PrfKey;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->prfKey:Lcom/google/crypto/tink/prf/PrfKey;

    return-object v0
.end method
