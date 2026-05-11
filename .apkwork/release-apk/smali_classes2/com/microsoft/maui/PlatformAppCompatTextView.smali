.class public Lcom/microsoft/maui/PlatformAppCompatTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "PlatformAppCompatTextView.java"


# instance fields
.field private isFormatted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .line 28
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatTextView;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/microsoft/maui/PlatformAppCompatTextView;->isFormatted:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual/range {p0 .. p5}, Lcom/microsoft/maui/PlatformAppCompatTextView;->onLayoutFormatted(ZIIII)V

    :cond_0
    return-void
.end method

.method protected onLayoutFormatted(ZIIII)V
    .locals 0

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 22
    instance-of v0, p1, Ljava/lang/String;

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/maui/PlatformAppCompatTextView;->isFormatted:Z

    .line 23
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
