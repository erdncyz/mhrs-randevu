.class public abstract Lcom/google/crypto/tink/streamingaead/StreamingAeadKey;
.super Lcom/google/crypto/tink/Key;
.source "StreamingAeadKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/crypto/tink/Key;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIdRequirementOrNull()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/google/crypto/tink/streamingaead/StreamingAeadKey;->getParameters()Lcom/google/crypto/tink/streamingaead/StreamingAeadParameters;

    move-result-object v0

    return-object v0
.end method

.method public abstract getParameters()Lcom/google/crypto/tink/streamingaead/StreamingAeadParameters;
.end method
