.class public Lcom/microsoft/maui/MauiViewGroup;
.super Landroid/view/ViewGroup;
.source "MauiViewGroup.java"


# instance fields
.field inputTransparent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static sendViewBatchUpdate(Landroid/view/View;FFIZFFFFFFFF)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 122
    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotY(F)V

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, p3, :cond_0

    .line 125
    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eq p1, p4, :cond_1

    .line 128
    invoke-virtual {p0, p4}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    :cond_1
    invoke-virtual {p0, p5}, Landroid/view/View;->setAlpha(F)V

    .line 131
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotation(F)V

    .line 132
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationX(F)V

    .line 133
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotationY(F)V

    .line 134
    invoke-virtual {p0, p9}, Landroid/view/View;->setScaleX(F)V

    .line 135
    invoke-virtual {p0, p10}, Landroid/view/View;->setScaleY(F)V

    .line 136
    invoke-virtual {p0, p11}, Landroid/view/View;->setTranslationX(F)V

    .line 137
    invoke-virtual {p0, p12}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method protected getInputTransparent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/maui/MauiViewGroup;->inputTransparent:Z

    return v0
.end method

.method public measureAndLayout(IIIIII)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/maui/MauiViewGroup;->measure(II)V

    .line 38
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/microsoft/maui/MauiViewGroup;->layout(IIII)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/maui/MauiViewGroup;->inputTransparent:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 63
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/maui/MauiViewGroup;->inputTransparent:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 72
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public sendBatchUpdate(FFIZFFFFFFFF)V
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/microsoft/maui/MauiViewGroup;->setPivotX(F)V

    .line 89
    invoke-virtual {p0, p2}, Lcom/microsoft/maui/MauiViewGroup;->setPivotY(F)V

    .line 91
    invoke-virtual {p0}, Lcom/microsoft/maui/MauiViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, p3, :cond_0

    .line 92
    invoke-virtual {p0, p3}, Lcom/microsoft/maui/MauiViewGroup;->setVisibility(I)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/maui/MauiViewGroup;->isEnabled()Z

    move-result p1

    if-eq p1, p4, :cond_1

    .line 95
    invoke-virtual {p0, p4}, Lcom/microsoft/maui/MauiViewGroup;->setEnabled(Z)V

    .line 97
    :cond_1
    invoke-virtual {p0, p5}, Lcom/microsoft/maui/MauiViewGroup;->setAlpha(F)V

    .line 98
    invoke-virtual {p0, p6}, Lcom/microsoft/maui/MauiViewGroup;->setRotation(F)V

    .line 99
    invoke-virtual {p0, p7}, Lcom/microsoft/maui/MauiViewGroup;->setRotationX(F)V

    .line 100
    invoke-virtual {p0, p8}, Lcom/microsoft/maui/MauiViewGroup;->setRotationY(F)V

    .line 101
    invoke-virtual {p0, p9}, Lcom/microsoft/maui/MauiViewGroup;->setScaleX(F)V

    .line 102
    invoke-virtual {p0, p10}, Lcom/microsoft/maui/MauiViewGroup;->setScaleY(F)V

    .line 103
    invoke-virtual {p0, p11}, Lcom/microsoft/maui/MauiViewGroup;->setTranslationX(F)V

    .line 104
    invoke-virtual {p0, p12}, Lcom/microsoft/maui/MauiViewGroup;->setTranslationY(F)V

    return-void
.end method

.method protected setInputTransparent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/maui/MauiViewGroup;->inputTransparent:Z

    return-void
.end method
