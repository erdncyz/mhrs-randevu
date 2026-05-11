.class public interface abstract Lcom/google/crypto/tink/keyderivation/KeysetDeriver;
.super Ljava/lang/Object;
.source "KeysetDeriver.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# virtual methods
.method public abstract deriveKeyset([B)Lcom/google/crypto/tink/KeysetHandle;
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
.end method
