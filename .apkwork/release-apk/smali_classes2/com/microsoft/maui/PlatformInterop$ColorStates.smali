.class Lcom/microsoft/maui/PlatformInterop$ColorStates;
.super Ljava/lang/Object;
.source "PlatformInterop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/maui/PlatformInterop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorStates"
.end annotation


# static fields
.field static final DEFAULT:[[I

.field static final EMPTY:[I

.field private static buttonState:[[I

.field private static checkBoxState:[[I

.field private static editTextState:[[I

.field private static switchState:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/microsoft/maui/PlatformInterop$ColorStates;->EMPTY:[I

    const/4 v2, 0x1

    new-array v2, v2, [[I

    aput-object v1, v2, v0

    sput-object v2, Lcom/microsoft/maui/PlatformInterop$ColorStates;->DEFAULT:[[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getButtonState()[[I
    .locals 3

    sget-object v0, Lcom/microsoft/maui/PlatformInterop$ColorStates;->buttonState:[[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const v1, 0x101009e

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, -0x101009e

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, -0x10100a0

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/microsoft/maui/PlatformInterop$ColorStates;->buttonState:[[I

    :cond_0
    sget-object v0, Lcom/microsoft/maui/PlatformInterop$ColorStates;->buttonState:[[I

    return-object v0
.end method

.method static getCheckBoxState()[[I
    .locals 5

    sget-object v0, Lcom/microsoft/maui/PlatformInterop$ColorStates;->checkBoxState:[[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const v2, 0x101009e

    const v3, 0x10100a0

    filled-new-array {v2, v3}, [I

    move-result-object v4

    aput-object v4, v0, v1

    const v1, -0x10100a0

    filled-new-array {v2, v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const v2, -0x101009e

    filled-new-array {v2, v3}, [I

    move-result-object v3

    aput-object v3, v0, v1

    const v1, -0x10100a7

    filled-new-array {v2, v1}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/microsoft/maui/PlatformInterop$ColorStates;->checkBoxState:[[I

    :cond_0
    sget-object v0, Lcom/microsoft/maui/PlatformInterop$ColorStates;->checkBoxState:[[I

    return-object v0
.end method

.method static getEditTextState()[[I
    .locals 3

    sget-object v0, Lcom/microsoft/maui/PlatformInterop$ColorStates;->editTextState:[[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x101009e

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, -0x101009e

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/microsoft/maui/PlatformInterop$ColorStates;->editTextState:[[I

    :cond_0
    sget-object v0, Lcom/microsoft/maui/PlatformInterop$ColorStates;->editTextState:[[I

    return-object v0
.end method

.method static getSwitchState()[[I
    .locals 3

    sget-object v0, Lcom/microsoft/maui/PlatformInterop$ColorStates;->switchState:[[I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [[I

    const v1, -0x101009e

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x10100a0

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Lcom/microsoft/maui/PlatformInterop$ColorStates;->EMPTY:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/maui/PlatformInterop$ColorStates;->switchState:[[I

    :cond_0
    sget-object v0, Lcom/microsoft/maui/PlatformInterop$ColorStates;->switchState:[[I

    return-object v0
.end method
