.class public final synthetic Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/google/crypto/tink/KeyTemplate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/crypto/tink/KeyTemplate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$$ExternalSyntheticLambda0;->f$0:Lcom/google/crypto/tink/KeyTemplate;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$$ExternalSyntheticLambda0;->f$0:Lcom/google/crypto/tink/KeyTemplate;

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->lambda$createParams$0(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    return-object v0
.end method
