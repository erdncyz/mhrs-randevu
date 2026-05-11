.class public Lcom/microsoft/maui/PlatformInterop;
.super Ljava/lang/Object;
.source "PlatformInterop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/maui/PlatformInterop$ColorStates;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEditTextColorStateList(Landroid/content/res/ColorStateList;I)Landroid/content/res/ColorStateList;
    .locals 3

    if-nez p0, :cond_0

    .line 449
    invoke-static {p1, p1}, Lcom/microsoft/maui/PlatformInterop;->getEditTextColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 451
    :cond_0
    invoke-static {}, Lcom/microsoft/maui/PlatformInterop$ColorStates;->getEditTextState()[[I

    move-result-object v0

    const/4 v1, 0x0

    .line 452
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 453
    aget-object v2, v0, v1

    invoke-virtual {p0, v2, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 454
    invoke-static {p1, p1}, Lcom/microsoft/maui/PlatformInterop;->getEditTextColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createNavigationBar(Landroid/content/Context;ILandroid/widget/LinearLayout;Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    .locals 2

    .line 197
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 198
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setBackgroundColor(I)V

    .line 200
    invoke-virtual {v0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    .line 201
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static createNavigationBarArea(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/FrameLayout;
    .locals 3

    .line 185
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 187
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x77

    .line 188
    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 189
    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 190
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static createNavigationBarOuterLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 2

    .line 177
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 178
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 179
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static createShellAppBar(Landroid/content/Context;ILandroidx/coordinatorlayout/widget/CoordinatorLayout;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 2

    .line 227
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 228
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 p1, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static createShellCoordinatorLayout(Landroid/content/Context;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 2

    .line 220
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    .line 221
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static createShellTabLayout(Landroid/content/Context;Lcom/google/android/material/appbar/AppBarLayout;I)Lcom/google/android/material/tabs/TabLayout;
    .locals 2

    .line 235
    new-instance v0, Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    .line 236
    new-instance p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, p2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x50

    .line 237
    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->gravity:I

    .line 238
    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 239
    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 240
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static createShellViewPager(Landroid/content/Context;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/tabs/TabLayout;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;Landroidx/viewpager2/adapter/FragmentStateAdapter;Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 2

    .line 246
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    .line 247
    new-instance p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 248
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    const/4 v1, 0x2

    .line 249
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOverScrollMode(I)V

    .line 250
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setId(I)V

    .line 251
    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-virtual {v0, p4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 253
    invoke-virtual {v0, p5}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 254
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    .line 256
    new-instance p0, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    return-object v0
.end method

.method public static createToolbar(Landroid/content/Context;II)Lcom/google/android/material/appbar/MaterialToolbar;
    .locals 2

    .line 207
    new-instance v0, Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;)V

    .line 208
    new-instance p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 209
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 210
    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/MaterialToolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-lez p2, :cond_0

    .line 213
    invoke-virtual {v0, p2}, Lcom/google/android/material/appbar/MaterialToolbar;->setPopupTheme(I)V

    :cond_0
    return-object v0
.end method

.method public static drawMauiDrawablePath(Landroid/graphics/drawable/PaintDrawable;Landroid/graphics/Canvas;IILandroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p2

    int-to-float v4, p3

    const/4 v5, 0x0

    move-object v0, p1

    .line 491
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p2

    .line 493
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 495
    invoke-virtual {p1, p4, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    if-eqz p5, :cond_1

    .line 498
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 501
    :cond_1
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public static getAnimatable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Animatable;
    .locals 1

    .line 686
    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 687
    check-cast p0, Landroid/graphics/drawable/Animatable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getBlendMode(I)Landroid/graphics/BlendMode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 283
    sget-object p0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    return-object p0

    .line 284
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid Mode"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :cond_1
    sget-object p0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    return-object p0

    .line 281
    :cond_2
    sget-object p0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    return-object p0
.end method

.method public static getButtonColorStateList(IIII)Landroid/content/res/ColorStateList;
    .locals 2

    .line 439
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-static {}, Lcom/microsoft/maui/PlatformInterop$ColorStates;->getButtonState()[[I

    move-result-object v1

    filled-new-array {p0, p1, p2, p3}, [I

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public static getCheckBoxColorStateList(IIII)Landroid/content/res/ColorStateList;
    .locals 2

    .line 427
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-static {}, Lcom/microsoft/maui/PlatformInterop$ColorStates;->getCheckBoxState()[[I

    move-result-object v1

    filled-new-array {p0, p1, p2, p3}, [I

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public static getColorStateListForToolbarStyleableAttribute(Landroid/content/Context;II)Landroid/content/res/ColorStateList;
    .locals 3

    .line 397
    sget-object v0, Lcom/microsoft/maui/R$styleable;->Toolbar:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p0

    .line 399
    :try_start_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    invoke-virtual {p0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 402
    throw p1
.end method

.method public static getCurrentWindowMetrics(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 1

    .line 591
    sget-object v0, Landroidx/window/layout/WindowMetricsCalculator;->Companion:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    .line 592
    invoke-virtual {v0}, Landroidx/window/layout/WindowMetricsCalculator$Companion;->getOrCreate()Landroidx/window/layout/WindowMetricsCalculator;

    move-result-object v0

    .line 593
    invoke-interface {v0, p0}, Landroidx/window/layout/WindowMetricsCalculator;->computeCurrentWindowMetrics(Landroid/app/Activity;)Landroidx/window/layout/WindowMetrics;

    move-result-object p0

    .line 594
    invoke-virtual {p0}, Landroidx/window/layout/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 415
    new-instance v0, Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/microsoft/maui/PlatformInterop$ColorStates;->DEFAULT:[[I

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public static getEditTextColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 2

    .line 421
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-static {}, Lcom/microsoft/maui/PlatformInterop$ColorStates;->getEditTextState()[[I

    move-result-object v1

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public static getFontMetrics(Landroid/content/Context;F)Landroid/graphics/Paint$FontMetrics;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 607
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 609
    new-instance v0, Lcom/microsoft/maui/PlatformInterop$1;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/maui/PlatformInterop$1;-><init>(FLandroid/util/DisplayMetrics;)V

    .line 616
    invoke-virtual {v0}, Lcom/microsoft/maui/PlatformInterop$1;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method static getPorterMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 293
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 294
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid Mode"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 291
    :cond_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public static getSemanticPlatformElement(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 133
    instance-of v0, p0, Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_0

    .line 134
    sget v0, Landroidx/appcompat/R$id;->search_src_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getSwitchColorStateList(III)Landroid/content/res/ColorStateList;
    .locals 2

    .line 433
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-static {}, Lcom/microsoft/maui/PlatformInterop$ColorStates;->getSwitchState()[[I

    move-result-object v1

    filled-new-array {p0, p1, p2}, [I

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public static getWindowBackgroundColor(Landroid/content/Context;)I
    .locals 3

    .line 511
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 512
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x1010054

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0}, Lcom/microsoft/maui/PlatformInterop;->isColorType(Landroid/util/TypedValue;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 513
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static isColorType(Landroid/util/TypedValue;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 528
    invoke-virtual {p0}, Landroid/util/TypedValue;->isColorType()Z

    move-result p0

    return p0

    .line 531
    :cond_0
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    iget p0, p0, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$requestLayoutIfNeeded$0(Landroid/view/View;)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->isInLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private static load(Lcom/bumptech/glide/RequestBuilder;Landroid/content/Context;ZLcom/microsoft/maui/ImageLoaderCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/content/Context;",
            "Z",
            "Lcom/microsoft/maui/ImageLoaderCallback;",
            ")V"
        }
    .end annotation

    .line 322
    new-instance v0, Lcom/microsoft/maui/glide/MauiCustomTarget;

    invoke-direct {v0, p1, p3}, Lcom/microsoft/maui/glide/MauiCustomTarget;-><init>(Landroid/content/Context;Lcom/microsoft/maui/ImageLoaderCallback;)V

    .line 323
    invoke-static {p0, v0, p2, p3}, Lcom/microsoft/maui/PlatformInterop;->prepare(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/request/target/Target;ZLcom/microsoft/maui/ImageLoaderCallback;)V

    return-void
.end method

.method public static loadImageFromFile(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/maui/ImageLoaderCallback;)V
    .locals 1

    .line 363
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 364
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 365
    invoke-static {p1, p0, v0, p2}, Lcom/microsoft/maui/PlatformInterop;->load(Lcom/bumptech/glide/RequestBuilder;Landroid/content/Context;ZLcom/microsoft/maui/ImageLoaderCallback;)V

    return-void
.end method

.method public static loadImageFromFile(Landroid/widget/ImageView;Ljava/lang/String;Lcom/microsoft/maui/ImageLoaderCallback;)V
    .locals 1

    .line 328
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 329
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 330
    invoke-static {p1, p0, v0, p2}, Lcom/microsoft/maui/PlatformInterop;->loadInto(Lcom/bumptech/glide/RequestBuilder;Landroid/widget/ImageView;ZLcom/microsoft/maui/ImageLoaderCallback;)V

    return-void
.end method

.method public static loadImageFromFont(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/Typeface;FLcom/microsoft/maui/ImageLoaderCallback;)V
    .locals 1

    .line 388
    new-instance v0, Lcom/microsoft/maui/glide/font/FontModel;

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/microsoft/maui/glide/font/FontModel;-><init>(ILjava/lang/String;FLandroid/graphics/Typeface;)V

    .line 390
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 391
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const/high16 p2, -0x80000000

    .line 392
    invoke-virtual {p1, p2, p2}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const/4 p2, 0x1

    .line 393
    invoke-static {p1, p0, p2, p5}, Lcom/microsoft/maui/PlatformInterop;->load(Lcom/bumptech/glide/RequestBuilder;Landroid/content/Context;ZLcom/microsoft/maui/ImageLoaderCallback;)V

    return-void
.end method

.method public static loadImageFromFont(Landroid/widget/ImageView;ILjava/lang/String;Landroid/graphics/Typeface;FLcom/microsoft/maui/ImageLoaderCallback;)V
    .locals 1

    .line 353
    new-instance v0, Lcom/microsoft/maui/glide/font/FontModel;

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/microsoft/maui/glide/font/FontModel;-><init>(ILjava/lang/String;FLandroid/graphics/Typeface;)V

    .line 355
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 356
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const/high16 p2, -0x80000000

    .line 357
    invoke-virtual {p1, p2, p2}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const/4 p2, 0x1

    .line 358
    invoke-static {p1, p0, p2, p5}, Lcom/microsoft/maui/PlatformInterop;->loadInto(Lcom/bumptech/glide/RequestBuilder;Landroid/widget/ImageView;ZLcom/microsoft/maui/ImageLoaderCallback;)V

    return-void
.end method

.method public static loadImageFromStream(Landroid/content/Context;Ljava/io/InputStream;Lcom/microsoft/maui/ImageLoaderCallback;)V
    .locals 1

    .line 382
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 383
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const/4 v0, 0x0

    .line 384
    invoke-static {p1, p0, v0, p2}, Lcom/microsoft/maui/PlatformInterop;->load(Lcom/bumptech/glide/RequestBuilder;Landroid/content/Context;ZLcom/microsoft/maui/ImageLoaderCallback;)V

    return-void
.end method

.method public static loadImageFromStream(Landroid/widget/ImageView;Ljava/io/InputStream;Lcom/microsoft/maui/ImageLoaderCallback;)V
    .locals 1

    .line 347
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 348
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const/4 v0, 0x0

    .line 349
    invoke-static {p1, p0, v0, p2}, Lcom/microsoft/maui/PlatformInterop;->loadInto(Lcom/bumptech/glide/RequestBuilder;Landroid/widget/ImageView;ZLcom/microsoft/maui/ImageLoaderCallback;)V

    return-void
.end method

.method public static loadImageFromUri(Landroid/content/Context;Ljava/lang/String;ZLcom/microsoft/maui/ImageLoaderCallback;)V
    .locals 1

    .line 369
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 371
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p3, p0, p1, p1}, Lcom/microsoft/maui/ImageLoaderCallback;->onComplete(Ljava/lang/Boolean;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void

    .line 375
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 376
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 377
    invoke-static {p1, p0, p2, p3}, Lcom/microsoft/maui/PlatformInterop;->load(Lcom/bumptech/glide/RequestBuilder;Landroid/content/Context;ZLcom/microsoft/maui/ImageLoaderCallback;)V

    return-void
.end method

.method public static loadImageFromUri(Landroid/widget/ImageView;Ljava/lang/String;ZLcom/microsoft/maui/ImageLoaderCallback;)V
    .locals 1

    .line 334
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 336
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p3, p0, p1, p1}, Lcom/microsoft/maui/ImageLoaderCallback;->onComplete(Ljava/lang/Boolean;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void

    .line 340
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 342
    invoke-static {p1, p0, p2, p3}, Lcom/microsoft/maui/PlatformInterop;->loadInto(Lcom/bumptech/glide/RequestBuilder;Landroid/widget/ImageView;ZLcom/microsoft/maui/ImageLoaderCallback;)V

    return-void
.end method

.method private static loadInto(Lcom/bumptech/glide/RequestBuilder;Landroid/widget/ImageView;ZLcom/microsoft/maui/ImageLoaderCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/widget/ImageView;",
            "Z",
            "Lcom/microsoft/maui/ImageLoaderCallback;",
            ")V"
        }
    .end annotation

    .line 317
    new-instance v0, Lcom/microsoft/maui/glide/MauiCustomViewTarget;

    invoke-direct {v0, p1, p3}, Lcom/microsoft/maui/glide/MauiCustomViewTarget;-><init>(Landroid/widget/ImageView;Lcom/microsoft/maui/ImageLoaderCallback;)V

    .line 318
    invoke-static {p0, v0, p2, p3}, Lcom/microsoft/maui/PlatformInterop;->prepare(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/request/target/Target;ZLcom/microsoft/maui/ImageLoaderCallback;)V

    return-void
.end method

.method public static measureAndGetWidthAndHeight(Landroid/view/View;II)J
    .locals 4

    .line 406
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 407
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-long p1, p1

    const/16 v0, 0x20

    shl-long/2addr p1, v0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long p0, p1, v0

    return-wide p0
.end method

.method private static prepare(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/request/target/Target;ZLcom/microsoft/maui/ImageLoaderCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z",
            "Lcom/microsoft/maui/ImageLoaderCallback;",
            ")V"
        }
    .end annotation

    .line 304
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->error(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    if-nez p2, :cond_0

    .line 307
    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 308
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    const/4 p2, 0x1

    .line 309
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 313
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .locals 1

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public static requestLayoutIfNeeded(Landroid/view/View;)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->isInLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/microsoft/maui/PlatformInterop$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/microsoft/maui/PlatformInterop$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static set(Landroid/view/View;IIIIZFFFFFFFFFF)V
    .locals 0

    .line 157
    invoke-static {p0}, Lcom/microsoft/maui/PlatformInterop;->requestLayoutIfNeeded(Landroid/view/View;)V

    .line 158
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 160
    invoke-virtual {p0, p3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 161
    invoke-virtual {p0, p4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 162
    invoke-virtual {p0, p5}, Landroid/view/View;->setEnabled(Z)V

    .line 163
    invoke-virtual {p0, p6}, Landroid/view/View;->setAlpha(F)V

    .line 164
    invoke-virtual {p0, p7}, Landroid/view/View;->setTranslationX(F)V

    .line 165
    invoke-virtual {p0, p8}, Landroid/view/View;->setTranslationY(F)V

    .line 166
    invoke-virtual {p0, p9}, Landroid/view/View;->setScaleX(F)V

    .line 167
    invoke-virtual {p0, p10}, Landroid/view/View;->setScaleY(F)V

    .line 168
    invoke-virtual {p0, p11}, Landroid/view/View;->setRotation(F)V

    .line 169
    invoke-virtual {p0, p12}, Landroid/view/View;->setRotationX(F)V

    .line 170
    invoke-virtual {p0, p13}, Landroid/view/View;->setRotationY(F)V

    .line 171
    invoke-static {p0, p14}, Lcom/microsoft/maui/PlatformInterop;->setPivotXIfNeeded(Landroid/view/View;F)V

    .line 172
    invoke-static {p0, p15}, Lcom/microsoft/maui/PlatformInterop;->setPivotYIfNeeded(Landroid/view/View;F)V

    return-void
.end method

.method public static setColorFilter(Landroid/graphics/drawable/Drawable;II)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 271
    new-instance v0, Landroid/graphics/BlendModeColorFilter;

    invoke-static {p2}, Lcom/microsoft/maui/PlatformInterop;->getBlendMode(I)Landroid/graphics/BlendMode;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 273
    :cond_0
    invoke-static {p2}, Lcom/microsoft/maui/PlatformInterop;->getPorterMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method

.method public static setContentDescriptionForAutomationId(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 116
    invoke-static {p0}, Lcom/microsoft/maui/PlatformInterop;->getSemanticPlatformElement(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    .line 126
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 128
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method public static setLengthFilter(Landroid/widget/EditText;I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    .line 563
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 565
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 566
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/InputFilter;

    .line 567
    instance-of v3, v3, Landroid/text/InputFilter$LengthFilter;

    if-eqz v3, :cond_1

    .line 568
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz p1, :cond_3

    .line 575
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 579
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/text/InputFilter;

    .line 580
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/InputFilter;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_4
    return-void
.end method

.method public static setPaintValues(Landroid/graphics/Paint;FLandroid/graphics/Paint$Join;Landroid/graphics/Paint$Cap;FLandroid/graphics/PathEffect;)V
    .locals 0

    .line 471
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 472
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 473
    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 474
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    if-eqz p5, :cond_0

    .line 476
    invoke-virtual {p0, p5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_0
    return-void
.end method

.method public static setPivotXIfNeeded(Landroid/view/View;F)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    :cond_0
    return-void
.end method

.method public static setPivotYIfNeeded(Landroid/view/View;F)V
    .locals 1

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    :cond_0
    return-void
.end method

.method public static updateMaxLength(Landroid/widget/EditText;I)V
    .locals 2

    .line 542
    invoke-static {p0, p1}, Lcom/microsoft/maui/PlatformInterop;->setLengthFilter(Landroid/widget/EditText;I)V

    if-gez p1, :cond_0

    return-void

    .line 547
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 548
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, p1, :cond_1

    const/4 v1, 0x0

    .line 549
    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
