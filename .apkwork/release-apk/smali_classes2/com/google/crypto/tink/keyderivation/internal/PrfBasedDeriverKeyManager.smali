.class public final Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;
.super Lcom/google/crypto/tink/internal/KeyTypeManager;
.source "PrfBasedDeriverKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/internal/KeyTypeManager<",
        "Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 36
    const-class v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/crypto/tink/internal/PrimitiveFactory;

    new-instance v2, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$1;

    const-class v3, Lcom/google/crypto/tink/keyderivation/KeysetDeriver;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$1;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/crypto/tink/internal/KeyTypeManager;-><init>(Ljava/lang/Class;[Lcom/google/crypto/tink/internal/PrimitiveFactory;)V

    return-void
.end method

.method public static register(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newKeyAllowed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;-><init>()V

    invoke-static {v0, p0}, Lcom/google/crypto/tink/Registry;->registerKeyManager(Lcom/google/crypto/tink/internal/KeyTypeManager;Z)V

    .line 118
    invoke-static {}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->register()V

    return-void
.end method


# virtual methods
.method public getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.PrfBasedDeriverKey"

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public keyFactory()Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory<",
            "Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;",
            "Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$2;

    const-class v1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$2;-><init>(Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;Ljava/lang/Class;)V

    return-object v0
.end method

.method public keyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;
    .locals 1

    .line 59
    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    return-object v0
.end method

.method public parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "byteString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    move-result-object p1

    return-object p1
.end method

.method public validateKey(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->getVersion()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->getVersion()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Validators;->validateVersion(II)V

    .line 65
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->hasPrfKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->getParams()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->hasDerivedKeyTemplate()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key.params.derived_key_template must be set"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key.prf_key must be set"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic validateKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 34
    check-cast p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->validateKey(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;)V

    return-void
.end method
