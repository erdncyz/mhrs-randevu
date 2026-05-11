.class public final synthetic Lcom/google/crypto/tink/signature/RsaSsaPkcs1ProtoSerialization$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializeKey(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/Serialization;
    .locals 0

    check-cast p1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    invoke-static {p1, p2}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1ProtoSerialization;->$r8$lambda$2p26bBAtXICNnCIAJk21bSCo-fs(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p1

    return-object p1
.end method
