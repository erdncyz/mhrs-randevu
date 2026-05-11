.class public Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriver;
.super Ljava/lang/Object;
.source "PrfBasedDeriver.java"

# interfaces
.implements Lcom/google/crypto/tink/keyderivation/KeysetDeriver;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final derivedKeyTemplate:Lcom/google/crypto/tink/proto/KeyTemplate;

.field private final streamingPrfKey:Lcom/google/crypto/tink/proto/KeyData;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/proto/KeyTemplate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamingPrfKey",
            "derivedKeyTemplate"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriver;->streamingPrfKey:Lcom/google/crypto/tink/proto/KeyData;

    iput-object p2, p0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriver;->derivedKeyTemplate:Lcom/google/crypto/tink/proto/KeyTemplate;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriver;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamingPrfKey",
            "derivedKeyTemplate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 51
    const-class v0, Lcom/google/crypto/tink/subtle/prf/StreamingPrf;

    invoke-static {p0, v0}, Lcom/google/crypto/tink/Registry;->getPrimitive(Lcom/google/crypto/tink/proto/KeyData;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/subtle/prf/StreamingPrf;

    const-string v1, "s"

    .line 52
    sget-object v2, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/subtle/prf/StreamingPrf;->computePrf([B)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/PrivilegedRegistry;->deriveKey(Lcom/google/crypto/tink/proto/KeyTemplate;Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/KeyData;

    .line 55
    new-instance v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriver;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriver;-><init>(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/proto/KeyTemplate;)V

    return-object v0
.end method


# virtual methods
.method public deriveKeyset([B)Lcom/google/crypto/tink/KeysetHandle;
    .locals 2
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

    iget-object v0, p0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriver;->streamingPrfKey:Lcom/google/crypto/tink/proto/KeyData;

    .line 63
    const-class v1, Lcom/google/crypto/tink/subtle/prf/StreamingPrf;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/Registry;->getPrimitive(Lcom/google/crypto/tink/proto/KeyData;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/subtle/prf/StreamingPrf;

    .line 64
    invoke-interface {v0, p1}, Lcom/google/crypto/tink/subtle/prf/StreamingPrf;->computePrf([B)Ljava/io/InputStream;

    move-result-object p1

    iget-object v0, p0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriver;->derivedKeyTemplate:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 65
    invoke-static {v0, p1}, Lcom/google/crypto/tink/PrivilegedRegistry;->deriveKey(Lcom/google/crypto/tink/proto/KeyTemplate;Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/KeyData;

    move-result-object p1

    .line 67
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset$Key;->newBuilder()Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyData(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyStatusType;->UNKNOWN_STATUS:Lcom/google/crypto/tink/proto/KeyStatusType;

    .line 69
    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p1

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->UNKNOWN_PREFIX:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 71
    invoke-virtual {p1, v1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 74
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset;->newBuilder()Lcom/google/crypto/tink/proto/Keyset$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->addKey(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/proto/Keyset$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->setPrimaryKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/Keyset;->toByteArray()[B

    move-result-object p1

    .line 75
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    .line 73
    invoke-static {p1, v0}, Lcom/google/crypto/tink/TinkProtoKeysetFormat;->parseKeyset([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p1

    return-object p1
.end method
