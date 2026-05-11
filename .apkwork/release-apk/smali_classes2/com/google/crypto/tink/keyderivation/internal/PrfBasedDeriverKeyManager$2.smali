.class Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$2;
.super Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;
.source "PrfBasedDeriverKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->keyFactory()Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory<",
        "Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;",
        "Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "clazz"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$2;->this$0:Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;

    .line 81
    invoke-direct {p0, p2}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->getPrfKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/Registry;->newKeyData(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->getParams()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->getDerivedKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriver;->create(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriver;

    .line 107
    invoke-static {}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->newBuilder()Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$2;->this$0:Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;

    .line 108
    invoke-virtual {v2}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->getParams()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;->setParams(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;->setPrfKey(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p1
.end method

.method public bridge synthetic createKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 81
    check-cast p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$2;->createKey(Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    move-result-object p1

    return-object p1
.end method

.method public parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
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

    .line 97
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 96
    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
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

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$2;->parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public validateKeyFormat(Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->hasPrfKeyTemplate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->getParams()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->hasDerivedKeyTemplate()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "format.params.derived_key_template must be set"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "format.params.prf_key_template must be set"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic validateKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 81
    check-cast p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$2;->validateKeyFormat(Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;)V

    return-void
.end method
