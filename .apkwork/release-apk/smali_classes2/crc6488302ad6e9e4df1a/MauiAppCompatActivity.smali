.class public Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MauiAppCompatActivity.java"

# interfaces
.implements Lmono/android/IGCUserPeer;


# static fields
.field public static final __md_methods:Ljava/lang/String; = "n_onCreate:(Landroid/os/Bundle;)V:GetOnCreate_Landroid_os_Bundle_Handler\nn_dispatchTouchEvent:(Landroid/view/MotionEvent;)Z:GetDispatchTouchEvent_Landroid_view_MotionEvent_Handler\nn_onActivityResult:(IILandroid/content/Intent;)V:GetOnActivityResult_IILandroid_content_Intent_Handler\nn_onBackPressed:()V:GetOnBackPressedHandler\nn_onConfigurationChanged:(Landroid/content/res/Configuration;)V:GetOnConfigurationChanged_Landroid_content_res_Configuration_Handler\nn_onNewIntent:(Landroid/content/Intent;)V:GetOnNewIntent_Landroid_content_Intent_Handler\nn_onPostCreate:(Landroid/os/Bundle;)V:GetOnPostCreate_Landroid_os_Bundle_Handler\nn_onPostResume:()V:GetOnPostResumeHandler\nn_onRestart:()V:GetOnRestartHandler\nn_onRequestPermissionsResult:(I[Ljava/lang/String;[I)V:GetOnRequestPermissionsResult_IarrayLjava_lang_String_arrayIHandler\nn_onRestoreInstanceState:(Landroid/os/Bundle;)V:GetOnRestoreInstanceState_Landroid_os_Bundle_Handler\n"


# instance fields
.field private refList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Microsoft.Maui.MauiAppCompatActivity, Microsoft.Maui"

    const-class v1, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;

    const-string v2, "n_onCreate:(Landroid/os/Bundle;)V:GetOnCreate_Landroid_os_Bundle_Handler\nn_dispatchTouchEvent:(Landroid/view/MotionEvent;)Z:GetDispatchTouchEvent_Landroid_view_MotionEvent_Handler\nn_onActivityResult:(IILandroid/content/Intent;)V:GetOnActivityResult_IILandroid_content_Intent_Handler\nn_onBackPressed:()V:GetOnBackPressedHandler\nn_onConfigurationChanged:(Landroid/content/res/Configuration;)V:GetOnConfigurationChanged_Landroid_content_res_Configuration_Handler\nn_onNewIntent:(Landroid/content/Intent;)V:GetOnNewIntent_Landroid_content_Intent_Handler\nn_onPostCreate:(Landroid/os/Bundle;)V:GetOnPostCreate_Landroid_os_Bundle_Handler\nn_onPostResume:()V:GetOnPostResumeHandler\nn_onRestart:()V:GetOnRestartHandler\nn_onRequestPermissionsResult:(I[Ljava/lang/String;[I)V:GetOnRequestPermissionsResult_IarrayLjava_lang_String_arrayIHandler\nn_onRestoreInstanceState:(Landroid/os/Bundle;)V:GetOnRestoreInstanceState_Landroid_os_Bundle_Handler\n"

    .line 25
    invoke-static {v0, v1, v2}, Lmono/android/Runtime;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Microsoft.Maui.MauiAppCompatActivity, Microsoft.Maui"

    const-string v2, ""

    .line 33
    invoke-static {v1, v2, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Microsoft.Maui.MauiAppCompatActivity, Microsoft.Maui"

    const-string v1, "System.Int32, System.Private.CoreLib"

    invoke-static {p1, v1, p0, v0}, Lmono/android/TypeManager;->Activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native n_dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method private native n_onActivityResult(IILandroid/content/Intent;)V
.end method

.method private native n_onBackPressed()V
.end method

.method private native n_onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method private native n_onCreate(Landroid/os/Bundle;)V
.end method

.method private native n_onNewIntent(Landroid/content/Intent;)V
.end method

.method private native n_onPostCreate(Landroid/os/Bundle;)V
.end method

.method private native n_onPostResume()V
.end method

.method private native n_onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method private native n_onRestart()V
.end method

.method private native n_onRestoreInstanceState(Landroid/os/Bundle;)V
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->n_dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public monodroidAddReference(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->refList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->refList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->refList:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public monodroidClearReferences()V
    .locals 1

    iget-object v0, p0, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->refList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->n_onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->n_onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->n_onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->n_onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->n_onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->n_onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->n_onPostResume()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->n_onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestart()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->n_onRestart()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcrc6488302ad6e9e4df1a/MauiAppCompatActivity;->n_onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
