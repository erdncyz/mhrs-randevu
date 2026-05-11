.class public Lcrc6452ffdc5b34af3a0f/WrapperView;
.super Lcom/microsoft/maui/PlatformWrapperView;
.source "WrapperView.java"

# interfaces
.implements Lmono/android/IGCUserPeer;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_onDetachedFromWindow:()V:GetOnDetachedFromWindowHandler\nn_onLayout:(ZIIII)V:GetOnLayout_ZIIIIHandler\nn_requestLayout:()V:GetRequestLayoutHandler\nn_dispatchTouchEvent:(Landroid/view/MotionEvent;)Z:GetDispatchTouchEvent_Landroid_view_MotionEvent_Handler\nn_getClipPath:(II)Landroid/graphics/Path;:GetGetClipPath_IIHandler\nn_drawShadow:(Landroid/graphics/Canvas;II)V:GetDrawShadow_Landroid_graphics_Canvas_IIHandler\nn_getVisibility:()I:GetGetVisibilityHandler\nn_setVisibility:(I)V:GetSetVisibility_IHandler\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Microsoft.Maui.Platform.WrapperView, Microsoft.Maui"

    const-class v1, Lcrc6452ffdc5b34af3a0f/WrapperView;

    const-string v2, "n_onDetachedFromWindow:()V:GetOnDetachedFromWindowHandler\nn_onLayout:(ZIIII)V:GetOnLayout_ZIIIIHandler\nn_requestLayout:()V:GetRequestLayoutHandler\nn_dispatchTouchEvent:(Landroid/view/MotionEvent;)Z:GetDispatchTouchEvent_Landroid_view_MotionEvent_Handler\nn_getClipPath:(II)Landroid/graphics/Path;:GetGetClipPath_IIHandler\nn_drawShadow:(Landroid/graphics/Canvas;II)V:GetDrawShadow_Landroid_graphics_Canvas_IIHandler\nn_getVisibility:()I:GetGetVisibilityHandler\nn_setVisibility:(I)V:GetSetVisibility_IHandler\n"

    .line 22
    invoke-static {v0, v1, v2}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Lcom/microsoft/maui/PlatformWrapperView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc6452ffdc5b34af3a0f/WrapperView;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Microsoft.Maui.Platform.WrapperView, Microsoft.Maui"

    const-string v1, "Android.Content.Context, Mono.Android"

    .line 30
    invoke-static {p1, v1, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native n_dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method private native n_drawShadow(Landroid/graphics/Canvas;II)V
.end method

.method private native n_getClipPath(II)Landroid/graphics/Path;
.end method

.method private native n_getVisibility()I
.end method

.method private native n_onDetachedFromWindow()V
.end method

.method private native n_onLayout(ZIIII)V
.end method

.method private native n_requestLayout()V
.end method

.method private native n_setVisibility(I)V
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcrc6452ffdc5b34af3a0f/WrapperView;->n_dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawShadow(Landroid/graphics/Canvas;II)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcrc6452ffdc5b34af3a0f/WrapperView;->n_drawShadow(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public getClipPath(II)Landroid/graphics/Path;
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcrc6452ffdc5b34af3a0f/WrapperView;->n_getClipPath(II)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility()I
    .locals 1

    .line 85
    invoke-direct {p0}, Lcrc6452ffdc5b34af3a0f/WrapperView;->n_getVisibility()I

    move-result v0

    return v0
.end method

.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcrc6452ffdc5b34af3a0f/WrapperView;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrc6452ffdc5b34af3a0f/WrapperView;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcrc6452ffdc5b34af3a0f/WrapperView;->refList:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lcrc6452ffdc5b34af3a0f/WrapperView;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcrc6452ffdc5b34af3a0f/WrapperView;->n_onDetachedFromWindow()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p5}, Lcrc6452ffdc5b34af3a0f/WrapperView;->n_onLayout(ZIIII)V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcrc6452ffdc5b34af3a0f/WrapperView;->n_requestLayout()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcrc6452ffdc5b34af3a0f/WrapperView;->n_setVisibility(I)V

    return-void
.end method
