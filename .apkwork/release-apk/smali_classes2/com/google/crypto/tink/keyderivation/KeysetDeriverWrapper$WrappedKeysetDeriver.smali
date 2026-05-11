.class Lcom/google/crypto/tink/keyderivation/KeysetDeriverWrapper$WrappedKeysetDeriver;
.super Ljava/lang/Object;
.source "KeysetDeriverWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/keyderivation/KeysetDeriver;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/keyderivation/KeysetDeriverWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedKeysetDeriver"
.end annotation


# instance fields
.field private final primitiveSet:Lcom/google/crypto/tink/PrimitiveSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "Lcom/google/crypto/tink/keyderivation/KeysetDeriver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/PrimitiveSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "Lcom/google/crypto/tink/keyderivation/KeysetDeriver;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/keyderivation/KeysetDeriverWrapper$WrappedKeysetDeriver;->primitiveSet:Lcom/google/crypto/tink/PrimitiveSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/PrimitiveSet;Lcom/google/crypto/tink/keyderivation/KeysetDeriverWrapper$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/keyderivation/KeysetDeriverWrapper$WrappedKeysetDeriver;-><init>(Lcom/google/crypto/tink/PrimitiveSet;)V

    return-void
.end method

.method private static deriveAndGetKeyData([BLcom/google/crypto/tink/keyderivation/KeysetDeriver;)Lcom/google/crypto/tink/proto/KeyData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "salt",
            "deriver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 60
    invoke-interface {p1, p0}, Lcom/google/crypto/tink/keyderivation/KeysetDeriver;->deriveKeyset([B)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    .line 61
    invoke-static {p0}, Lcom/google/crypto/tink/CleartextKeysetHandle;->getKeyset(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/proto/Keyset;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->getKeyCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/proto/Keyset;->getKey(I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Wrapped Deriver must create a keyset with exactly one KeyData"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public deriveKeyset([B)Lcom/google/crypto/tink/KeysetHandle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "salt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset;->newBuilder()Lcom/google/crypto/tink/proto/Keyset$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/keyderivation/KeysetDeriverWrapper$WrappedKeysetDeriver;->primitiveSet:Lcom/google/crypto/tink/PrimitiveSet;

    .line 72
    invoke-virtual {v1}, Lcom/google/crypto/tink/PrimitiveSet;->getAllInKeysetOrder()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/PrimitiveSet$Entry;

    .line 74
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset$Key;->newBuilder()Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v3

    .line 75
    invoke-virtual {v2}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getPrimitive()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/keyderivation/KeysetDeriver;

    invoke-static {p1, v4}, Lcom/google/crypto/tink/keyderivation/KeysetDeriverWrapper$WrappedKeysetDeriver;->deriveAndGetKeyData([BLcom/google/crypto/tink/keyderivation/KeysetDeriver;)Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyData(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v3

    .line 76
    invoke-virtual {v2}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v3

    .line 77
    invoke-virtual {v2}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v3

    .line 78
    invoke-virtual {v2}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getKeyId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/proto/Keyset$Builder;->addKey(Lcom/google/crypto/tink/proto/Keyset$Key$Builder;)Lcom/google/crypto/tink/proto/Keyset$Builder;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/crypto/tink/keyderivation/KeysetDeriverWrapper$WrappedKeysetDeriver;->primitiveSet:Lcom/google/crypto/tink/PrimitiveSet;

    .line 80
    invoke-virtual {p1}, Lcom/google/crypto/tink/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/PrimitiveSet$Entry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getKeyId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->setPrimaryKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Builder;

    .line 82
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/Keyset;->toByteArray()[B

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    .line 81
    invoke-static {p1, v0}, Lcom/google/crypto/tink/TinkProtoKeysetFormat;->parseKeyset([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p1

    return-object p1
.end method
