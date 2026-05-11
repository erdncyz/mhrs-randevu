.class Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$1;
.super Lcom/google/crypto/tink/internal/PrimitiveFactory;
.source "PrfBasedDeriverKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/internal/PrimitiveFactory<",
        "Lcom/google/crypto/tink/keyderivation/KeysetDeriver;",
        "Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/internal/PrimitiveFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getPrimitive(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;)Lcom/google/crypto/tink/keyderivation/KeysetDeriver;
    .locals 1
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

    .line 42
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->getPrfKey()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->getParams()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->getDerivedKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriver;->create(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPrimitive(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Ljava/lang/Object;
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

    .line 38
    check-cast p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$1;->getPrimitive(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;)Lcom/google/crypto/tink/keyderivation/KeysetDeriver;

    move-result-object p1

    return-object p1
.end method
