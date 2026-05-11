.class public final Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;
.super Ljava/lang/Object;
.source "EnumTypeProtoConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field fromProtoEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;TO;>;"
        }
    .end annotation
.end field

.field toProtoEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TO;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->fromProtoEnumMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->toProtoEnumMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$1;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "protoEnum",
            "objectEnum"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TO;)",
            "Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder<",
            "TE;TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->fromProtoEnumMap:Ljava/util/Map;

    .line 53
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->toProtoEnumMap:Ljava/util/Map;

    .line 54
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/internal/EnumTypeProtoConverter<",
            "TE;TO;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->fromProtoEnumMap:Ljava/util/Map;

    .line 60
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->toProtoEnumMap:Ljava/util/Map;

    .line 61
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$1;)V

    return-object v0
.end method
