.class public Lcom/microsoft/maui/PlatformFontSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "PlatformFontSpan.java"


# instance fields
.field private letterSpacing:Ljava/lang/Float;

.field private textSize:Ljava/lang/Float;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 25
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/maui/PlatformFontSpan;->letterSpacing:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Typeface;ZF)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p2, p0, Lcom/microsoft/maui/PlatformFontSpan;->typeface:Landroid/graphics/Typeface;

    if-eqz p3, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 40
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 37
    invoke-static {p2, p4, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/maui/PlatformFontSpan;->textSize:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method apply(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/maui/PlatformFontSpan;->typeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/maui/PlatformFontSpan;->textSize:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_1
    iget-object v0, p0, Lcom/microsoft/maui/PlatformFontSpan;->letterSpacing:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_2
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/microsoft/maui/PlatformFontSpan;->apply(Landroid/text/TextPaint;)V

    :cond_0
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/microsoft/maui/PlatformFontSpan;->apply(Landroid/text/TextPaint;)V

    return-void
.end method
