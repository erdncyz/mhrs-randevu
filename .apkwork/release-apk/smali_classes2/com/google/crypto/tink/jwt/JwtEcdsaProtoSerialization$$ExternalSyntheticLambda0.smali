.class public final synthetic Lcom/google/crypto/tink/jwt/JwtEcdsaProtoSerialization$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializeParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/internal/Serialization;
    .locals 0

    check-cast p1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaProtoSerialization;->$r8$lambda$NrKARNM9-dIa1YyE8m93Q4ZUmvs(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p1

    return-object p1
.end method
