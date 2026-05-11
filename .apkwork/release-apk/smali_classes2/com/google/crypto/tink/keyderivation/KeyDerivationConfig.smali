.class public final Lcom/google/crypto/tink/keyderivation/KeyDerivationConfig;
.super Ljava/lang/Object;
.source "KeyDerivationConfig.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/google/crypto/tink/keyderivation/KeysetDeriverWrapper;->register()V

    .line 47
    invoke-static {}, Lcom/google/crypto/tink/config/TinkFips;->useOnlyFips()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 55
    invoke-static {v0}, Lcom/google/crypto/tink/prf/HkdfPrfKeyManager;->register(Z)V

    .line 58
    invoke-static {v0}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->register(Z)V

    return-void
.end method
