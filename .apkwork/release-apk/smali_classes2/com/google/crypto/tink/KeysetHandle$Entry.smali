.class public final Lcom/google/crypto/tink/KeysetHandle$Entry;
.super Ljava/lang/Object;
.source "KeysetHandle.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/KeysetHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private final id:I

.field private final isPrimary:Z

.field private final key:Lcom/google/crypto/tink/Key;

.field private final keyStatus:Lcom/google/crypto/tink/KeyStatus;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeyStatus;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "keyStatus",
            "id",
            "isPrimary"
        }
    .end annotation

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/KeysetHandle$Entry;->key:Lcom/google/crypto/tink/Key;

    iput-object p2, p0, Lcom/google/crypto/tink/KeysetHandle$Entry;->keyStatus:Lcom/google/crypto/tink/KeyStatus;

    iput p3, p0, Lcom/google/crypto/tink/KeysetHandle$Entry;->id:I

    iput-boolean p4, p0, Lcom/google/crypto/tink/KeysetHandle$Entry;->isPrimary:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeyStatus;IZLcom/google/crypto/tink/KeysetHandle$1;)V
    .locals 0

    .line 438
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/KeysetHandle$Entry;-><init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeyStatus;IZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/crypto/tink/KeysetHandle$Entry;Lcom/google/crypto/tink/KeysetHandle$Entry;)Z
    .locals 0

    .line 438
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/KeysetHandle$Entry;->equalsEntry(Lcom/google/crypto/tink/KeysetHandle$Entry;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/google/crypto/tink/KeysetHandle$Entry;)Z
    .locals 0

    .line 438
    iget-boolean p0, p0, Lcom/google/crypto/tink/KeysetHandle$Entry;->isPrimary:Z

    return p0
.end method

.method private equalsEntry(Lcom/google/crypto/tink/KeysetHandle$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 477
    iget-boolean v0, p1, Lcom/google/crypto/tink/KeysetHandle$Entry;->isPrimary:Z

    iget-boolean v1, p0, Lcom/google/crypto/tink/KeysetHandle$Entry;->isPrimary:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 480
    :cond_0
    iget-object v0, p1, Lcom/google/crypto/tink/KeysetHandle$Entry;->keyStatus:Lcom/google/crypto/tink/KeyStatus;

    iget-object v1, p0, Lcom/google/crypto/tink/KeysetHandle$Entry;->keyStatus:Lcom/google/crypto/tink/KeyStatus;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 483
    :cond_1
    iget v0, p1, Lcom/google/crypto/tink/KeysetHandle$Entry;->id:I

    iget v1, p0, Lcom/google/crypto/tink/KeysetHandle$Entry;->id:I

    if-eq v0, v1, :cond_2

    return v2

    .line 486
    :cond_2
    iget-object p1, p1, Lcom/google/crypto/tink/KeysetHandle$Entry;->key:Lcom/google/crypto/tink/Key;

    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Entry;->key:Lcom/google/crypto/tink/Key;

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/Key;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/KeysetHandle$Entry;->id:I

    return v0
.end method

.method public getKey()Lcom/google/crypto/tink/Key;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Entry;->key:Lcom/google/crypto/tink/Key;

    return-object v0
.end method

.method public getStatus()Lcom/google/crypto/tink/KeyStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Entry;->keyStatus:Lcom/google/crypto/tink/KeyStatus;

    return-object v0
.end method

.method public isPrimary()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/crypto/tink/KeysetHandle$Entry;->isPrimary:Z

    return v0
.end method
