.class public Lcom/microsoft/maui/PlatformLineHeightSpan;
.super Ljava/lang/Object;
.source "PlatformLineHeightSpan.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final relativeLineHeight:F

.field private final top:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/microsoft/maui/PlatformLineHeightSpan;->relativeLineHeight:F

    .line 16
    invoke-static {p1, p3}, Lcom/microsoft/maui/PlatformInterop;->getFontMetrics(Landroid/content/Context;F)Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/microsoft/maui/PlatformLineHeightSpan;->top:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    if-eqz p6, :cond_1

    iget-object p1, p0, Lcom/microsoft/maui/PlatformLineHeightSpan;->top:Ljava/lang/Float;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float p1, p1

    :goto_0
    iget p2, p0, Lcom/microsoft/maui/PlatformLineHeightSpan;->relativeLineHeight:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 24
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_1
    return-void
.end method
