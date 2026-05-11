.class public Lcom/microsoft/maui/glide/GlideLogging;
.super Ljava/lang/Object;
.source "GlideLogging.java"


# static fields
.field private static final IS_VERBOSE_LOGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "Glide"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Glide"

    const/4 v1, 0x2

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/microsoft/maui/glide/GlideLogging;->IS_VERBOSE_LOGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVerboseLoggable()Z
    .locals 1

    sget-boolean v0, Lcom/microsoft/maui/glide/GlideLogging;->IS_VERBOSE_LOGGABLE:Z

    return v0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/microsoft/maui/glide/GlideLogging;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "Glide"

    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
