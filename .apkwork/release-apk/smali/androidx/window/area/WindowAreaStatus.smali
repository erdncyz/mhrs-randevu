.class public final Landroidx/window/area/WindowAreaStatus;
.super Ljava/lang/Object;
.source "WindowAreaStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/area/WindowAreaStatus$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/window/area/WindowAreaStatus;",
        "",
        "mDescription",
        "",
        "(Ljava/lang/String;)V",
        "toString",
        "Companion",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AVAILABLE:Landroidx/window/area/WindowAreaStatus;

.field public static final Companion:Landroidx/window/area/WindowAreaStatus$Companion;

.field public static final UNAVAILABLE:Landroidx/window/area/WindowAreaStatus;

.field public static final UNSUPPORTED:Landroidx/window/area/WindowAreaStatus;


# instance fields
.field private final mDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/area/WindowAreaStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/area/WindowAreaStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/area/WindowAreaStatus;->Companion:Landroidx/window/area/WindowAreaStatus$Companion;

    .line 40
    new-instance v0, Landroidx/window/area/WindowAreaStatus;

    const-string v1, "UNSUPPORTED"

    invoke-direct {v0, v1}, Landroidx/window/area/WindowAreaStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/area/WindowAreaStatus;->UNSUPPORTED:Landroidx/window/area/WindowAreaStatus;

    .line 48
    new-instance v0, Landroidx/window/area/WindowAreaStatus;

    const-string v1, "UNAVAILABLE"

    invoke-direct {v0, v1}, Landroidx/window/area/WindowAreaStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/area/WindowAreaStatus;->UNAVAILABLE:Landroidx/window/area/WindowAreaStatus;

    .line 54
    new-instance v0, Landroidx/window/area/WindowAreaStatus;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1}, Landroidx/window/area/WindowAreaStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/area/WindowAreaStatus;->AVAILABLE:Landroidx/window/area/WindowAreaStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/area/WindowAreaStatus;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/window/area/WindowAreaStatus;->mDescription:Ljava/lang/String;

    return-object v0
.end method
