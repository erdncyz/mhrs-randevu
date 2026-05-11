.class public final Lcom/google/crypto/tink/internal/MutableSerializationRegistry;
.super Ljava/lang/Object;
.source "MutableSerializationRegistry.java"


# static fields
.field private static final GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/MutableSerializationRegistry;


# instance fields
.field private final registry:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/crypto/tink/internal/SerializationRegistry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$tLo8Il1jtXsiaLw6yVe6deN4xr0()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;
    .locals 1

    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->createGlobalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry$$ExternalSyntheticLambda0;-><init>()V

    .line 49
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    sput-object v0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    invoke-direct {v1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;-><init>()V

    .line 56
    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->build()Lcom/google/crypto/tink/internal/SerializationRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static createGlobalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;-><init>()V

    .line 42
    new-instance v1, Lcom/google/crypto/tink/internal/MutableSerializationRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry$$ExternalSyntheticLambda1;-><init>()V

    const-class v2, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    const-class v3, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 43
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/KeySerializer;->create(Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeySerializer;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V

    return-object v0
.end method

.method public static globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    return-object v0
.end method


# virtual methods
.method public hasParserForKey(Lcom/google/crypto/tink/internal/Serialization;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TSerializationT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 128
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/SerializationRegistry;->hasParserForKey(Lcom/google/crypto/tink/internal/Serialization;)Z

    move-result p1

    return p1
.end method

.method public hasParserForParameters(Lcom/google/crypto/tink/internal/Serialization;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TSerializationT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 185
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/SerializationRegistry;->hasParserForParameters(Lcom/google/crypto/tink/internal/Serialization;)Z

    move-result p1

    return p1
.end method

.method public hasSerializerForKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "serializationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyT:",
            "Lcom/google/crypto/tink/Key;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TKeyT;",
            "Ljava/lang/Class<",
            "TSerializationT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 167
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/internal/SerializationRegistry;->hasSerializerForKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public hasSerializerForParameters(Lcom/google/crypto/tink/Parameters;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "serializationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParametersT:",
            "Lcom/google/crypto/tink/Parameters;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TParametersT;",
            "Ljava/lang/Class<",
            "TSerializationT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 220
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/internal/SerializationRegistry;->hasSerializerForParameters(Lcom/google/crypto/tink/Parameters;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;
    .locals 1
    .param p2    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serializedKey",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TSerializationT;",
            "Lcom/google/crypto/tink/SecretKeyAccess;",
            ")",
            "Lcom/google/crypto/tink/Key;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 141
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/internal/SerializationRegistry;->parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;

    move-result-object p1

    return-object p1
.end method

.method public parseKeyWithLegacyFallback(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;
    .locals 1
    .param p2    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "protoKeySerialization",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->hasParserForKey(Lcom/google/crypto/tink/internal/Serialization;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    invoke-direct {v0, p1, p2}, Lcom/google/crypto/tink/internal/LegacyProtoKey;-><init>(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)V

    return-object v0

    .line 160
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;

    move-result-object p1

    return-object p1
.end method

.method public parseParameters(Lcom/google/crypto/tink/internal/Serialization;)Lcom/google/crypto/tink/Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TSerializationT;)",
            "Lcom/google/crypto/tink/Parameters;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 197
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/SerializationRegistry;->parseParameters(Lcom/google/crypto/tink/internal/Serialization;)Lcom/google/crypto/tink/Parameters;

    move-result-object p1

    return-object p1
.end method

.method public parseParametersWithLegacyFallback(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protoParametersSerialization"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->hasParserForParameters(Lcom/google/crypto/tink/internal/Serialization;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/internal/LegacyProtoParameters;-><init>(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)V

    return-object v0

    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->parseParameters(Lcom/google/crypto/tink/internal/Serialization;)Lcom/google/crypto/tink/Parameters;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/KeyParser<",
            "TSerializationT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 87
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;-><init>(Lcom/google/crypto/tink/internal/SerializationRegistry;)V

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->build()Lcom/google/crypto/tink/internal/SerializationRegistry;

    move-result-object p1

    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyT:",
            "Lcom/google/crypto/tink/Key;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/KeySerializer<",
            "TKeyT;TSerializationT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 71
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;-><init>(Lcom/google/crypto/tink/internal/SerializationRegistry;)V

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->build()Lcom/google/crypto/tink/internal/SerializationRegistry;

    move-result-object p1

    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 73
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerParametersParser(Lcom/google/crypto/tink/internal/ParametersParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/ParametersParser<",
            "TSerializationT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 120
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 121
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;-><init>(Lcom/google/crypto/tink/internal/SerializationRegistry;)V

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->registerParametersParser(Lcom/google/crypto/tink/internal/ParametersParser;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->build()Lcom/google/crypto/tink/internal/SerializationRegistry;

    move-result-object p1

    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 122
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerParametersSerializer(Lcom/google/crypto/tink/internal/ParametersSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParametersT:",
            "Lcom/google/crypto/tink/Parameters;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/ParametersSerializer<",
            "TParametersT;TSerializationT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 104
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;-><init>(Lcom/google/crypto/tink/internal/SerializationRegistry;)V

    .line 105
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->registerParametersSerializer(Lcom/google/crypto/tink/internal/ParametersSerializer;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->build()Lcom/google/crypto/tink/internal/SerializationRegistry;

    move-result-object p1

    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 107
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public serializeKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/Serialization;
    .locals 1
    .param p3    # Lcom/google/crypto/tink/SecretKeyAccess;
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
            "key",
            "serializationClass",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyT:",
            "Lcom/google/crypto/tink/Key;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TKeyT;",
            "Ljava/lang/Class<",
            "TSerializationT;>;",
            "Lcom/google/crypto/tink/SecretKeyAccess;",
            ")TSerializationT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 179
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/crypto/tink/internal/SerializationRegistry;->serializeKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/Serialization;

    move-result-object p1

    return-object p1
.end method

.method public serializeParameters(Lcom/google/crypto/tink/Parameters;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/Serialization;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "serializationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParametersT:",
            "Lcom/google/crypto/tink/Parameters;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TParametersT;",
            "Ljava/lang/Class<",
            "TSerializationT;>;)TSerializationT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 233
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/internal/SerializationRegistry;->serializeParameters(Lcom/google/crypto/tink/Parameters;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/Serialization;

    move-result-object p1

    return-object p1
.end method
