.class Lcom/microsoft/maui/PlatformInterop$1;
.super Landroid/graphics/Paint;
.source "PlatformInterop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/maui/PlatformInterop;->getFontMetrics(Landroid/content/Context;F)Landroid/graphics/Paint$FontMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultFontSize:F

.field final synthetic val$metrics:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(FLandroid/util/DisplayMetrics;)V
    .locals 1

    iput p1, p0, Lcom/microsoft/maui/PlatformInterop$1;->val$defaultFontSize:F

    iput-object p2, p0, Lcom/microsoft/maui/PlatformInterop$1;->val$metrics:Landroid/util/DisplayMetrics;

    .line 609
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x2

    .line 611
    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 610
    invoke-virtual {p0, p1}, Lcom/microsoft/maui/PlatformInterop$1;->setTextSize(F)V

    return-void
.end method
