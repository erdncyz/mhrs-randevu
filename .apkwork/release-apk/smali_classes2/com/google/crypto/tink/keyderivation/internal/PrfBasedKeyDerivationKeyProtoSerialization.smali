.class final Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;
.super Ljava/lang/Object;
.source "PrfBasedKeyDerivationKeyProtoSerialization.java"


# static fields
.field private static final KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeyParser<",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeySerializer<",
            "Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/ParametersParser<",
            "Lcom/google/crypto/tink/internal/ProtoParametersSerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/ParametersSerializer<",
            "Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;",
            "Lcom/google/crypto/tink/internal/ProtoParametersSerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.PrfBasedDeriverKey"

.field private static final TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;


# direct methods
.method public static synthetic $r8$lambda$FnDpOecZ8cE_HaBXmhetw9cuf18(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->parseKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GY6Vr0a2g79exfJMssYZMDcKgOg(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->serializeParameters(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K_mqnY596tTHbkDhFH2BP6y6PfY(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oFMOrAAuQPbiVcYzJF-PuO3c8sA(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->serializeKey(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string v0, "type.googleapis.com/google.crypto.tink.PrfBasedDeriverKey"

    .line 57
    invoke-static {v0}, Lcom/google/crypto/tink/internal/Util;->toBytesFromPrintableAscii(Ljava/lang/String;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

    .line 61
    new-instance v1, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    const-class v3, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 62
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/ParametersSerializer;->create(Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersSerializer;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    .line 67
    new-instance v1, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization$$ExternalSyntheticLambda1;-><init>()V

    const-class v2, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 68
    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/internal/ParametersParser;->create(Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersParser;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    .line 74
    new-instance v1, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization$$ExternalSyntheticLambda2;-><init>()V

    const-class v2, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;

    const-class v3, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 75
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/KeySerializer;->create(Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeySerializer;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    .line 80
    new-instance v1, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization$$ExternalSyntheticLambda3;-><init>()V

    const-class v2, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 81
    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/internal/KeyParser;->create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;
    .locals 7
    .param p1    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serialization",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "Output-Prefix mismatch in parameters while parsing PrfBasedKeyDerivationKey with parameters "

    .line 185
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.PrfBasedDeriverKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v2

    .line 191
    invoke-static {v1, v2}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->getPrfKey()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyData;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->getPrfKey()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/KeyData;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v3

    .line 197
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->getPrfKey()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v4

    sget-object v5, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    const/4 v6, 0x0

    .line 194
    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v2

    .line 201
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;

    move-result-object p1

    .line 202
    instance-of v2, p1, Lcom/google/crypto/tink/prf/PrfKey;

    if-eqz v2, :cond_1

    .line 205
    check-cast p1, Lcom/google/crypto/tink/prf/PrfKey;

    .line 207
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->getParams()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->getDerivedKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->checkedCreate(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object v1

    .line 209
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v2

    .line 210
    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->parseParameters(Lcom/google/crypto/tink/internal/Serialization;)Lcom/google/crypto/tink/Parameters;

    move-result-object v2

    .line 212
    invoke-static {}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->builder()Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;

    move-result-object v3

    .line 213
    invoke-virtual {v3, v2}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;->setDerivedKeyParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;

    move-result-object v2

    .line 214
    invoke-virtual {p1}, Lcom/google/crypto/tink/prf/PrfKey;->getParameters()Lcom/google/crypto/tink/prf/PrfParameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;->setPrfParameters(Lcom/google/crypto/tink/prf/PrfParameters;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;->build()Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    move-result-object v2

    .line 217
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v3

    .line 218
    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v1

    if-ne v3, v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    .line 225
    invoke-static {v2, p1, p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->create(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;Lcom/google/crypto/tink/prf/PrfKey;Ljava/lang/Integer;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;

    move-result-object p0

    return-object p0

    .line 219
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Non-PRF key stored in the field prf_key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing HmacKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to PrfBasedKeyDerivationKey.parseKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialization"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.PrfBasedDeriverKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->getParams()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->getDerivedKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyTemplate;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/TinkProtoParametersFormat;->parse([B)Lcom/google/crypto/tink/Parameters;

    move-result-object v1

    .line 105
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->getPrfKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyTemplate;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/TinkProtoParametersFormat;->parse([B)Lcom/google/crypto/tink/Parameters;

    move-result-object v2

    .line 106
    instance-of v3, v2, Lcom/google/crypto/tink/prf/PrfParameters;

    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    .line 111
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->getParams()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->getDerivedKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v3

    if-ne p0, v3, :cond_0

    .line 116
    invoke-static {}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->builder()Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;

    move-result-object p0

    check-cast v2, Lcom/google/crypto/tink/prf/PrfParameters;

    .line 117
    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;->setPrfParameters(Lcom/google/crypto/tink/prf/PrfParameters;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;

    move-result-object p0

    .line 118
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;->setDerivedKeyParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;->build()Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    move-result-object p0

    return-object p0

    .line 112
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output-Prefix mismatch in parameters while parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Non-PRF parameters stored in the field prf_key_template"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 99
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing PrfBasedDeriverKeyFormat failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 89
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to PrfBasedKeyDerivationKeyProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static register()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 234
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->register(Lcom/google/crypto/tink/internal/MutableSerializationRegistry;)V

    return-void
.end method

.method public static register(Lcom/google/crypto/tink/internal/MutableSerializationRegistry;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    .line 239
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersSerializer(Lcom/google/crypto/tink/internal/ParametersSerializer;)V

    sget-object v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    .line 240
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersParser(Lcom/google/crypto/tink/internal/ParametersParser;)V

    sget-object v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    .line 241
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V

    sget-object v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    .line 242
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)V

    return-void
.end method

.method private static serializeKey(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 4
    .param p1    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 156
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->getPrfKey()Lcom/google/crypto/tink/prf/PrfKey;

    move-result-object v1

    const-class v2, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->serializeKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/Serialization;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 159
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->getParameters()Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->getDerivedKeyParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object v1

    const-class v2, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 160
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->serializeParameters(Lcom/google/crypto/tink/Parameters;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/Serialization;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 164
    invoke-static {}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->newBuilder()Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;

    move-result-object v1

    .line 166
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder()Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v2

    .line 167
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v2

    .line 168
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v2

    .line 169
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setKeyMaterialType(Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object p1

    .line 165
    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;->setPrfKey(Lcom/google/crypto/tink/proto/KeyData$Builder;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;

    move-result-object p1

    .line 171
    invoke-static {}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->newBuilder()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;->setDerivedKeyTemplate(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {p1, v1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;->setParams(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    .line 174
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    sget-object v1, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 176
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.PrfBasedDeriverKey"

    .line 162
    invoke-static {v2, p1, v1, v0, p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method private static serializeParameters(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->getPrfParameters()Lcom/google/crypto/tink/prf/PrfParameters;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/TinkProtoParametersFormat;->serialize(Lcom/google/crypto/tink/Parameters;)[B

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate;->parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->getDerivedKeyParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/TinkProtoParametersFormat;->serialize(Lcom/google/crypto/tink/Parameters;)[B

    move-result-object p0

    .line 133
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 132
    invoke-static {p0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate;->parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p0

    .line 135
    invoke-static {}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$Builder;->setPrfKeyTemplate(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$Builder;

    move-result-object v0

    .line 138
    invoke-static {}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->newBuilder()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;->setDerivedKeyTemplate(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    .line 141
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.PrfBasedDeriverKey"

    .line 142
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 143
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 140
    invoke-static {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->create(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 147
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Serializing PrfBasedKeyDerivationParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
