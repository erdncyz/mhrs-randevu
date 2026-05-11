.class public abstract Lcom/microsoft/maui/PlatformWrapperView;
.super Lcom/microsoft/maui/PlatformContentViewGroup;
.source "PlatformWrapperView.java"


# instance fields
.field private hasShadow:Z

.field private final viewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/microsoft/maui/PlatformContentViewGroup;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/microsoft/maui/PlatformWrapperView;->viewBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/microsoft/maui/PlatformWrapperView;->setClipChildren(Z)V

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/microsoft/maui/PlatformWrapperView;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Lcom/microsoft/maui/PlatformWrapperView;->hasShadow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/maui/PlatformWrapperView;->viewBounds:Landroid/graphics/Rect;

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/maui/PlatformWrapperView;->viewBounds:Landroid/graphics/Rect;

    .line 49
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 50
    invoke-virtual {p0}, Lcom/microsoft/maui/PlatformWrapperView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0, v2}, Lcom/microsoft/maui/PlatformWrapperView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :cond_0
    if-nez v1, :cond_1

    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 58
    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/microsoft/maui/PlatformWrapperView;->drawShadow(Landroid/graphics/Canvas;II)V

    .line 60
    :cond_2
    invoke-super {p0, p1}, Lcom/microsoft/maui/PlatformContentViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected abstract drawShadow(Landroid/graphics/Canvas;II)V
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 33
    invoke-virtual {p0}, Lcom/microsoft/maui/PlatformWrapperView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-super {p0, p1, p2}, Lcom/microsoft/maui/PlatformContentViewGroup;->onMeasure(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/microsoft/maui/PlatformWrapperView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/maui/PlatformWrapperView;->viewBounds:Landroid/graphics/Rect;

    .line 39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 40
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/maui/PlatformWrapperView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected final setHasShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/maui/PlatformWrapperView;->hasShadow:Z

    .line 28
    invoke-virtual {p0}, Lcom/microsoft/maui/PlatformWrapperView;->invalidate()V

    return-void
.end method
