.class public abstract Lcom/microsoft/maui/PlatformContentViewGroup;
.super Landroid/view/ViewGroup;
.source "PlatformContentViewGroup.java"


# instance fields
.field private hasClip:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/microsoft/maui/PlatformContentViewGroup;->hasClip:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/maui/PlatformContentViewGroup;->getClipPath(II)Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 48
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected abstract getClipPath(II)Landroid/graphics/Path;
.end method

.method protected final setHasClip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/maui/PlatformContentViewGroup;->hasClip:Z

    .line 36
    invoke-virtual {p0}, Lcom/microsoft/maui/PlatformContentViewGroup;->invalidate()V

    return-void
.end method

.method protected final viewGroupDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
